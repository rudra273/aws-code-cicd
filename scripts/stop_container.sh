#!/bin/bash
set -e

# Get the ID of the running Docker container
container_id=$(docker ps -q --filter "status=running")

if [ -n "$container_id" ]; then
    echo "Stopping and removing container with ID: $container_id"
    # Stop the container
    docker stop $container_id
    # Remove the stopped container
    docker rm $container_id
else
    echo "No running container found."
fi
