sudo pacman -Syu --noconfirm fuzzel
rm -rf ~/.config/fuzzel.ini
ln -s $HOME/dotfiles/fuzzel/fuzzel.ini $HOME/.config/fuzzel.ini

