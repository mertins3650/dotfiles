sudo pacman -Syu --noconfirm swaync
sudo pacman -Syu --noconfirm libnotify
sudo pacman -Syu --noconfirm hypridle
sudo pacman -Syu --noconfirm hyprpaper
sudo pacman -Syu --noconfirm waybar 
sudo pacman -Syu --noconfirm hyprlock 

rm -rf ~/.config/hypr
rm -rf ~/.config/waybar

ln -s $HOME/dotfiles/hypr $HOME/.config/hypr
ln -s $HOME/dotfiles/backgrounds $HOME/.config/backgrounds
ln -s $HOME/dotfiles/waybar $HOME/.config/waybar
