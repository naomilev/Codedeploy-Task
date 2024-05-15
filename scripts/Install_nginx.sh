#!/bin/bash
# If the container is already running
docker stop naomi-nginx || true
# If the container already exists
docker rm naomi-nginx || true
#deploy nginx
docker run --name naomi-nginx -d -p 80:80 nginx:latest
