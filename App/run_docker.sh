#!/usr/bin/env bash
TAG=dash-board

# Build image and add a descriptive tag
docker build --tag=$TAG .

# List docker images
docker images

# Run flask app
docker run -it -p 8000:80 $TAG
