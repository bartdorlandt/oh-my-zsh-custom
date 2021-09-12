# Load the bash aliases I already had.
if [[ -f $HOME/.shell_aliases ]] ; then
  source $HOME/.shell_aliases
fi
if [[ -f $HOME/.work_aliases ]] ; then
  source $HOME/.work_aliases
fi
if [[ -f $HOME/.shell_env ]] ; then
  source $HOME/.shell_env
fi
if [[ -f $HOME/.bash_env ]] ; then
  source $HOME/.bash_env
fi
if [[ $(id -u) == 0 ]]; then
	if [[ -f $HOME/.root_aliases ]] ; then
	  source $HOME/.root_aliases
	fi
fi

### Setting additional paths
if [[ -d $HOME/bin ]] ; then
    PATH="$HOME/bin:$PATH"
fi
if [[ -d $HOME/bin/platform-tools ]] ; then
    PATH="$PATH:$HOME/bin/platform-tools"
fi
if [[ -d $HOME/.local/bin ]] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
# set PATH so it includes user's private scripts if it exists
if [[ -d $HOME/scripts ]] ; then
    PATH="$HOME/scripts:$PATH"
fi

if [[ -f $HOME/git/virtualenv-autodetect/virtualenv-autodetect.sh ]]; then
	source $HOME/git/virtualenv-autodetect/virtualenv-autodetect.sh
fi

# set PATH so it includes snap
# if [[ -d /snap/bin ]] ; then
# 	if [[ $(/bin/echo $PATH | /bin/grep "/snap/bin" | wc -l) != '1' ]]; then
# 		# PATH="$PATH:/snap/bin"
# 	fi
# fi

# ssh-agent settings
# zstyle :omz:plugins:ssh-agent agent-forwarding off
# zstyle :omz:plugins:ssh-agent identities id_rsa
# zstyle :omz:plugins:ssh-agent lifetime 300

# TMUX settings
export DISABLE_AUTO_TITLE='true'
