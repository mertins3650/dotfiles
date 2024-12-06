sudo pacman -Syu --noconfirm zsh
sudo pacman -Syu --noconfirm tmux

rm ~/.zshrc
ln -s "$HOME/dotfiles/zsh/.zshrc" "$HOME/.zshrc"
mkdir -p "$HOME/.local/bin/"
ln -s "$HOME/dotfiles/scripts/tmux-sessionizer" "$HOME/.local/bin/tmux-sessionizer"
ln -s "$HOME/dotfiles/tmux/.tmux.conf" "$HOME/.tmux.conf"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
