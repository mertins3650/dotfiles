wget -qO- https://github.com/mertins3650/dotfiles/archive/refs/heads/main.zip | bsdtar -xvf- -C ~ --strip-components=1 -s'|dotfiles-main|dotfiles|' && bash ~/dotfiles/installer/install.sh
