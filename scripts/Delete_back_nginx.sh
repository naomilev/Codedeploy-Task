#!/bin/bash
sudo systemctl start docker
sudo usermod -aG docker root
sudo systemctl restart docker

if [ "$(docker ps -q -f name=naomi-nginx)" ]; then
    docker stop naomi-nginx
fi
