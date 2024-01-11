# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

# Load zsh-syntax-highlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Load zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

source $ZSH/oh-my-zsh.sh

# Load devbox
eval "$(devbox global shellenv --init-hook)"
# Load direnv
eval "$(direnv hook zsh)"

# Opens files in vscode
export EDITOR="code --wait"

# Required for gpgSign
export GPG_TTY=$(tty)
# Start gpg-agent
gpg-agent --daemon 2>/dev/null

###########
# ALIASES #
###########

alias ll='ls -l'
alias gs='git status'
alias vi='vim'
alias nrs='npm run start'
alias grb='git fetch && git rebase -S origin/main'
alias gca='gc -S --amend'

# Loads nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
