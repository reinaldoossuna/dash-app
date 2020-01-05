#!/usr/bin/env bash

DEPLOY=dash-app
echo $(minikube service $DEPLOY --url)
