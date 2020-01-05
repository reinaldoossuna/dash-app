#!/usr/bin/env bash

# Run the Docker Hub container with kubernetes
kubectl apply -f replication.yaml
kubectl apply -f service.yaml

# List kubernetes pods
kubectl get svc
