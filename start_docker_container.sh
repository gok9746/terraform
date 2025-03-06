#!/bin/bash

# Set container name
container_name="web-app-container"

# Build the Docker image from the Dockerfile
docker build -t $container_name .

# Run the Docker container
docker run -d --name $container_name -p 80:80 $container_name
