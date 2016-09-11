ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}⚡"
ZSH_THEME_GIT_PROMPT_CLEAN=""

function prompt_char {
	if [ $UID -eq 0 ]; then echo "%{$fg[red]%}#%{$reset_color%}"; else echo $; fi
}
function user_color {
	if [ $UID -eq 0 ]; then echo "%{$fg[red]%}%n%{$reset_color%}"; else echo "%{$fg[magenta]%}%n%{$reset_color%}"; fi
}

# Pretty much original tjkirch.zsh-theme
# PROMPT='%(?, ,%{$fg[red]%}FAIL: $?%{$reset_color%}
# )%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[yellow]%}%m%{$reset_color%} %{$fg_bold[blue]%}%2~%{$reset_color%}$(git_prompt_info) %_$(prompt_char) '

# including the reset color parts.
#PROMPT='%_$(user_color)@%{$fg[yellow]%}%m%{$reset_color%} %{$fg_bold[blue]%}%2~%{$reset_color%}$(git_prompt_info) %_$(prompt_char) '
#RPROMPT='%(?,,%{$fg[red]%}FAIL: $?%{$reset_color%})'

# removed the reset color parts. Removed the return code since I don't use them anyway. 
PROMPT='%_$(user_color)@%{$fg[yellow]%}%m%{$reset_color%} %{$fg_bold[blue]%}%2~%{$reset_color%}$(git_prompt_info) %_$(prompt_char) '
#RPROMPT='%(?,,%{$fg[red]%}FAIL: $?%{$reset_color%})'

