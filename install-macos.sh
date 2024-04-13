#!/bin/sh
echo "Installing dependecies"

# Install Oh My ZSH
if [ -d "~/.oh-my-zsh" ] ; then
    echo "Oh My ZSH is already installed"
else 
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Install Homebrew
if brew -v ; then 
    echo "Homebrew is already installed"
else
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Creating symbolic links"

mkdir ~/.config
ln -s -f ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -s -f ~/.dotfiles/zsh/.zprofile-macos ~/.zprofile
ln -s -f ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -s -f ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -s -f ~/.dotfiles/neovim ~/.config/nvim
mkdir ~/.config/alacritty
ln -s -f ~/.dotfiles/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml

echo "Modifying system"

touch ~/.hushlogin

echo "Installing packages"

brew install neofetch
brew install neovim
brew install node
brew install go
brew install lua

brew install --cask alacritty

echo "Done!"
