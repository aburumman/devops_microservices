#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="09035077346/mlearn:1.0.1"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run mlearn --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pods/mlearn 8000:80
