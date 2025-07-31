#!/bin/bash
set -e

echo "Pulling the latest Docker image..."
docker pull wasimm267/simple-python-flask-app

echo "Starting a new container named 'flask1'..."
docker run -itd -p 5000:5000 wasimm267/simple-python-flask-app
