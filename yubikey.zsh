# make it less tempting to use gpg version 1
alias gpg=gpg2
# use gpg's tab completions for gpg2; careful: not all options exist in both
#compdef gpg2=gpg

# Yubikey , GPG, SSH
if [ -x /usr/bin/gpg-agent ] && [ -x /usr/lib/gnupg2/scdaemon ] && [ -f /etc/X11/Xsession.options ]; then
  #echo "gpg-agent exists"
  if [ ! "$(ps x | grep gpg-agent | grep ssh | grep -v grep)" ]; then
    #echo "no gpg-agent exists"
    while [ "$(ps x | grep gpg-agent | grep -v grep)" ]; do
      #echo "trying to kill the agent"
      killall gpg-agent > /dev/null 2>&1
    done
    #if [ ! -f $HOME/.gpg-agent-info ]; then
    #  echo "filling .gpg-agent-info"
      eval $(gpg-agent --daemon --enable-ssh-support > $HOME/.gpg-agent-info);
    #fi
  fi
  # execute its contents, including the export
  test -f $HOME/.gpg-agent-info && source $HOME/.gpg-agent-info
# End yubikey settings

# Doing a check on the Xsession file.
  if [[ -z $(cat /etc/X11/Xsession.options | grep "#use-ssh-agent") ]] ; then
    echo "comment the use-ssh-agent line in /etc/X11/Xsession.options"
  fi
fi
