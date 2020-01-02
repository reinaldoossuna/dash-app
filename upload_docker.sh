#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Create dockerpath
dockerpath=reinaldoossuna/dash-app

# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login

# Push image to a docker repository
#
docker tag dash-board $dockerpath
docker push $dockerpath
