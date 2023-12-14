# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh



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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

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
