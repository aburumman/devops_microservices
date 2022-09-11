#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build . -t "09035077346/mlearn-app:1.0.1" 

docker push "09035077346/mlearn-app:1.0.1"
# Step 2: 
# List docker images
docker images

# Step 3: 
# Run flask app
docker run -p 80:80 "09035077346/mlearn-app:1.0.1"
