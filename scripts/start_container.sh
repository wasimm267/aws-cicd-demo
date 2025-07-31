#!/bin/bash

echo "Starting Docker container from Docker Hub..."

# Pull the latest image
docker pull wasimm267/simple-python-flask-app:latest

# Run the container
docker run -d --name flask-app -p 5000:5000 wasimm267/simple-python-flask-app:latest
