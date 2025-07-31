#!/bin/bash
set -e

echo "Pulling the latest Docker image..."
docker pull wasimm267/simple-flask-app

echo "Checking for existing container named 'flask1'..."
if [ "$(docker ps -aq -f name=flask1)" ]; then
    echo "Stopping and removing existing container..."
    docker stop flask1 || true
    docker rm flask1 || true
fi

echo "Starting a new container named 'flask1'..."
docker run -itd --name flask1 -p 5000:5000 wasimm267/simple-flask-app
