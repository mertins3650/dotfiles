#!/bin/bash

sudo pacman -Syu --noconfirm docker
sudo pacman -Syu --noconfirm waybar 
sudo pacman -Syu --noconfirm hyprlock 
sudo pacman -Syu --noconfirm neovim 
sudo pacman -Syu --noconfirm firefox 
sudo pacman -Syu --noconfirm ripgrep 
sudo pacman -Syu --noconfirm fzf
sudo pacman -Syu --noconfirm lazygit 
sudo pacman -Syu --noconfirm eza 
sudo pacman -Syu --noconfirm zoxide 
sudo pacman -Syu --noconfirm stow 
sudo pacman -Syu --noconfirm ttf-cascadia-code-nerd 
sudo pacman -Syu --noconfirm wofi 
sudo pacman -Syu --noconfirm npm 
sudo pacman -Syu --noconfirm nodejs 
sudo pacman -Syu --noconfirm github-cli 
sudo pacman -Syu --noconfirm lua 
sudo pacman -Syu --noconfirm luarocks 
sudo pacman -Syu --noconfirm python 
sudo pacman -Syu --noconfirm python-pip
sudo pacman -Syu --noconfirm swaync
sudo pacman -Syu --noconfirm libnotify
sudo pacman -Syu --noconfirm hypridle
sudo pacman -Syu --noconfirm hyprpaper
sudo pacman -Syu --noconfirm yazi
sudo pacman -Syu --noconfirm fuzzel


sudo systemctl enable docker.service
sudo systemctl start docker.service

sudo usermod -aG docker "$USER"

DOCKER_CONFIG='/etc/docker/daemon.json'
sudo mkdir -p /etc/docker
echo '{
    "log-driver": "json-file",
    "log-opts": {
        "max-size": "10m",
        "max-file": "5"
    }
}' | sudo tee "$DOCKER_CONFIG" > /dev/null

sudo systemctl restart docker.service

sudo pacman -Syu --noconfirm mysql-clients postgresql-libs

sudo docker run -d --restart unless-stopped -p "127.0.0.1:3306:3306" --name=mysql8 \
    -e MYSQL_ROOT_PASSWORD= \
    -e MYSQL_ALLOW_EMPTY_PASSWORD=true \
    mysql:8.4

sudo docker run -d --restart unless-stopped -p "127.0.0.1:5432:5432" --name=postgres16 \
    -e POSTGRES_HOST_AUTH_METHOD=trust \
    postgres:16


curl -fsSL https://bun.sh/install | bash

rm ~/.zshrc
ln -s "$HOME/dotfiles/zsh/.zshrc" "$HOME/.zshrc"
mkdir -p "$HOME/.local/bin/"
ln -s "$HOME/dotfiles/scripts/tmux-sessionizer" "$HOME/.local/bin/tmux-sessionizer"
sudo npm install -g typescript-language-server typescript
ln -s "$HOME/dotfiles/tmux/.tmux.conf" "$HOME/.tmux.conf"
stow nvim
stow waybar
stow hyprland
stow kitty
stow hyprlock
stow hyprmocha
stow hypridle
stow backgrounds
stow fuzzel
stow hyprpaper
cd
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si

yay -S lazydocker
yay -S hyprshot

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
