#!/usr/bin/env bash

rm ~/.zshrc
ln -s "$HOME/dotfiles/zsh/.zshrc" "$HOME/.zshrc"
sudo apt install zsh
hash -r
sudo chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
