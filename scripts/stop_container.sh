#!/bin/bash

echo "Stopping existing container if running..."

if [ "$(docker ps -q -f name=flask-app)" ]; then
    docker stop flask-app
    docker rm flask-app
else
    echo "No running container named flask-app"
fi
