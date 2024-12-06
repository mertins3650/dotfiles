sudo pacman -Syu --noconfirm docker
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
