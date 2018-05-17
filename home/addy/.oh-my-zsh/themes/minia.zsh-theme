PROMPT='%{$fg[cyan]%}%~%{$reset_color%}$(git_prompt_info) %{$fg[magenta]%}_%{$reset_color%} '
RPROMPT=' %{$fg[black]%}$(date +"%H:%M")%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} dirty%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} clean%{$reset_color%}"
