sudo pacman -Syu --noconfirm kitty

rm -rf ~/.config/kitty
ln -s $HOME/dotfiles/kitty/ $HOME/.config/kitty
