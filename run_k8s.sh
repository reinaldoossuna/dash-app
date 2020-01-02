#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# This is your Docker ID/path
dockerpath=reinaldoossuna/dash-app
DEPLOY=dash-app

# Run the Docker Hub container with kubernetes
kubectl create deployment $DEPLOY --image=$dockerpath

# Wait for the deployment
kubectl wait --for condition=available deployment/$DEPLOY

# List kubernetes pods
kubectl get pods

# Forward the container port to a host
kubectl expose deployment $DEPLOY --type="NodePort" --port 8000 --target-port 80
