#!/bin/bash

# Set container name
container_name="web-app-container"

# Start logging
echo "Starting stop_docker_container.sh script..."

# Check if the container is running
container_id=$(docker ps -q -f name=$container_name)

if [ -n "$container_id" ]; then
    echo "Stopping container $container_name..."
    docker stop $container_name

    # Wait for the container to stop completely
    sleep 3

    echo "Removing container $container_name..."
    docker rm -f $container_name
else
    echo "No running container named $container_name found."
fi

# Clean up unused resources (optional)
echo "Removing unused Docker resources..."
docker system prune -af

echo "stop_docker_container.sh script completed."
