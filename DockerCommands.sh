#!/bin/sh

# Run:
# chmod +x DockerCommands.sh
# sudo ./DockerCommands.sh

# Docker Boot on Startup
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

# Check Running Containers:
docker ps

# Restart All Running or Stopped or Exited Containers:
docker restart $(docker ps -a -q)

# Restart All Running or Stopped Containers:
docker restart $(docker ps -q)

# Restart Containers by Name:
docker restart [container_name1] [container_name2]

# Remove Docker Images
docker image rm [image_id1] [image_id2]

# Remove all stoped containers:
docker rm $(docker ps -a -q)

## Docker Compose Commands:
# Run Docker Compose:
docker-compose up -d

# Stop Docker Compose:
docker-compose down
