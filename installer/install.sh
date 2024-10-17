sudo apt update -y
sudo apt upgrade -y
sudo apt install -y curl git unzip

for installer in ~/dotfiles/installer/apps/*.sh; do source $installer; done
for installer in ~/dotfiles/installer/apps/*.sh; do source $installer; done
for installer in ~/dotfiles/installer/post/*.sh; do source $installer; done
