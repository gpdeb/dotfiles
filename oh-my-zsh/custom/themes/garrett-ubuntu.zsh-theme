PROMPT='$SSH_INFO%{$fg[green]%}%B%n@%m%b%{$reset_color%}%B:%b%{$fg[blue]%}%B%~/%b%{$reset_color%}$(git_prompt_info)%B$%b '

if [ -n "$SSH_CLIENT" ]; then
    SSH_INFO="%{$fg[red]%}%BSSH%b%{$reset_color%} "
else
    SSH_INFO=""
fi

ZSH_THEME_GIT_PROMPT_PREFIX="%B:%b%{$fg[yellow]%}%B"
ZSH_THEME_GIT_PROMPT_SUFFIX="%b%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}%B*%b%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
