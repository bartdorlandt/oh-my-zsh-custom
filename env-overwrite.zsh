# This is a new one, except for the time.
#ZSH_THEME="tjkirch"
# Creates a shorter path, but still nice.
#ZSH_THEME="risto"
# Bart is a mix of risto and tjkirch
ZSH_THEME="bart"
CASE_SENSITIVE="false"
plugins=(git debian extract ssh-agent)

# Load the bash aliases I already had.
if [[ -f $HOME/.bash_aliases ]] ; then
  source $HOME/.bash_aliases
fi

# loading fasd separately to get it working
if [[ -f $HOME/.oh-my-zsh/plugins/fasd/fasd.plugin.zsh ]] ; then
  source $HOME/.oh-my-zsh/plugins/fasd/fasd.plugin.zsh
fi

# ssh-agent settings
zstyle :omz:plugins:ssh-agent agent-forwarding off
zstyle :omz:plugins:ssh-agent identities id_rsa
zstyle :omz:plugins:ssh-agent lifetime 300
