# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir chruby vcs)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time)
# POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# source  ~/powerlevel9k/powerlevel9k.zsh-theme

autoload colors && colors

user_at_host() {
  echo "%n@%m"
}

directory_name() {
    echo "%{$fg_bold[cyan]%}%~%{$reset_color%}"
}

export PROMPT=$'\n$(user_at_host):$(directory_name) \n› '
set_prompt () {
  export RPROMPT="%{$fg_bold[cyan]%}%t%{$reset_color%}"
}

precmd() {
  title "zsh" "%m" "%55<...<%~"
  set_prompt
}
