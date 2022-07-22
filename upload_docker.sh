#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="osatoedosa/predictionapp"

# Step 2:  
# Authenticate & tag
docker login -u osatoedosa
docker tag predictionapp:v.1.0 ${dockerpath}
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push ${dockerpath}
