# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# Aliases
alias ll='ls -l'
alias gs='git status'
alias vi='vim'
alias nrs='npm run start'

# Devbox
# Load devbox
eval "$(devbox global shellenv --init-hook)"
# Load direnv
eval "$(direnv hook zsh)"

# Load zsh-syntax-highlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Load zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Opens files in vscode
export EDITOR="code --wait"

