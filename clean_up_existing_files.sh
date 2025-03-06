#!/bin/bash

# Set container name
container_name="web-app-container"

# Print debug info
echo "Stopping and removing container: $container_name"

# Check if the container is running
container_id=$(docker ps -q -f name=$container_name)
if [ -n "$container_id" ]; then
  echo "Container is running, stopping and removing..."
  docker stop $container_name
  docker rm $container_name
else
  echo "No running container found with name: $container_name"
fi
