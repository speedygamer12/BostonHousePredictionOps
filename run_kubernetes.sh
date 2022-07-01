#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="speedygamer12/flask_pred_new"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run speedygamer12flaskpred --image=$dockerpath --port=80 --labels app=flask_pred_new

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward speedygamer12flaskpred --address 0.0.0.0 8000:80
