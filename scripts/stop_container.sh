#!/bin/bash
set -e

# Get the ID of the running Docker container
container_id=$(sudo docker ps -q --filter "status=running")

if [ -n "$container_id" ]; then
    echo "Stopping and removing container with ID: $container_id"
    # Stop the container
    sudo docker stop $container_id
    # Remove the stopped container
    sudo docker rm $container_id
else
    echo "No running container found."
fi
