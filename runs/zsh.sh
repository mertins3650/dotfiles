sudo pacman -Syu --noconfirm zsh
rm ~/.zshrc
ln -s "$HOME/dotfiles/zsh/.zshrc" "$HOME/.zshrc"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
