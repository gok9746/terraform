#!/bin/bash

# Set the path to the conflicting file
file_path="/home/ubuntu/docker-webapp/Dockerfile"

# Check if the file exists and remove it
if [ -f "$file_path" ]; then
    echo "Removing existing $file_path..."
    rm -f "$file_path"
else
    echo "$file_path does not exist."
fi
