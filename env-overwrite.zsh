# This is a new one, except for the time.
#ZSH_THEME="tjkirch"
# Creates a shorter path, but still nice.
#ZSH_THEME="risto"
# Bart is a mix of risto and tjkirch
ZSH_THEME="bart"
CASE_SENSITIVE="true"
plugins=(git debian extract)
# Do not prompt me about auto updates, just do it.
DISABLE_UPDATE_PROMPT="true"
DISABLE_AUTO_UPDATE="true"

# Load the bash aliases I already had.
if [[ -f $HOME/.bash_aliases ]] ; then
  source $HOME/.bash_aliases
fi

# loading fasd separately to get it working
if [[ -f $HOME/.oh-my-zsh/plugins/fasd/fasd.plugin.zsh ]] ; then
  source $HOME/.oh-my-zsh/plugins/fasd/fasd.plugin.zsh
fi
