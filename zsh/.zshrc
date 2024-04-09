export ZSH="$HOME/.oh-my-zsh"
export DEFAULT_USER=$USER

# Plugins (See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes)
ZSH_THEME="agnoster"

# ZSH Plugins
plugins=(
    tmux
    docker
    git
)

source $ZSH/oh-my-zsh.sh

# Aliases
alias vim=nvim
alias gf='gofmt -s -w .'

# Run neofetch on startup
neofetch
