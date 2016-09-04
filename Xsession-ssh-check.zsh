if [[ -f /etc/X11/Xsession.options ]] ; then
  if [[ -z $(cat /etc/X11/Xsession.options | grep "#use-ssh-agent") ]] ; then
    echo "comment the use-ssh-agent line in /etc/X11/Xsession.options"
  fi
fi
