PROMPT='$SSH_INFO%n@%m %{$fg[blue]%}%~/%{$reset_color%} $(git_prompt_info)$ '

if [ -n "$SSH_CLIENT" ]; then
    SSH_INFO="%{$fg[red]%}[SSH]%{$reset_color%} "
else
    SSH_INFO=""
fi

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
