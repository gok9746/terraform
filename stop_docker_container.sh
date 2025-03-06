#!/bin/bash

# Set container name
container_name="web-app-container"

# Check if the container is running and stop it
docker ps -q -f name=$container_name | grep -q . && docker stop $container_name
docker ps -q -f name=$container_name | grep -q . && docker rm $container_name
