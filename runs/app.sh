sudo pacman -Syu --noconfirm ripgrep 
sudo pacman -Syu --noconfirm fzf
sudo pacman -Syu --noconfirm lazygit 
sudo pacman -Syu --noconfirm eza 
sudo pacman -Syu --noconfirm zoxide 
sudo pacman -Syu --noconfirm yazi
sudo pacman -Syu --noconfirm ttf-cascadia-code-nerd 

sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si