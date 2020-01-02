#!/usr/bin/env bash

IP=$(minikube ip)
NODE_PORT=$(kubectl get services dash-app -o go-template='{{(index .spec.ports 0).nodePort}}')
echo "http://$IP:$NODE_PORT/dash"
