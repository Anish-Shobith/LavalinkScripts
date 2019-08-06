#!/bin/sh

sudo apt-get update
sudo apt install apt-transport-https ca-certificates curl gnupg2 software-properties-common -y

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

sudo apt update

apt-cache policy docker-ce

sudo apt install docker-ce

git clone https://github.com/Anish-Shobith/Lavalink-Dockerfile.git

cd Lavalink-Dockerfile

sudo docker build -t lavalink .

sudo docker run --name=lavalink -d -p 2333:2333 lavalink