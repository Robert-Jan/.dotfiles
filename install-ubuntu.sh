echo "Creating symbolic links"

mkdir ~/.config
ln -s -f ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -s -f ~/.dotfiles/zsh/.zprofile-ubuntu ~/.zprofile
ln -s -f ~/.dotfiles/neovim ~/.config/nvim
ln -s -f ~/.dotfiles/git/.gitconfig ~/.gitconfig
ln -s -f ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf

echo "Installing packages"

sudo apt-get install neofetch
sudo apt-get install tmux

echo "Done!"
