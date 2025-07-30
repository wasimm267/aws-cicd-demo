#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull wasimm267/simple-flask-app

# Run the Docker image as a container
docker run -itd --name flask1 -p 5000:5000 wasimm267/simple-flask-app
