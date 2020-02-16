export ZSH="/Users/mfomichev/.oh-my-zsh"

ZSH_THEME="agnoster"

# GLOBDOTS lets files beginning with a . be matched without explicitly specifying the dot
setopt globdots

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

plugins=(
         git
         tmux
         docker
         mvn
	 gradle
)

source $ZSH/oh-my-zsh.sh

alias vim="nvim"
alias vi="nvim"
alias mc='. /usr/local/Cellar/midnight-commander/4.8.24/libexec/mc/mc-wrapper.sh'
alias gw='./gradlew'

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/mfomichev/.sdkman"
[[ -s "/Users/mfomichev/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/mfomichev/.sdkman/bin/sdkman-init.sh"
