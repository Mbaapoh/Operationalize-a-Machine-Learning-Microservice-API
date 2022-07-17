#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=mbaapoh/udacityalx-ml-project:v1.0.0

# Step 2:  
# Authenticate & tag
docker login --username=$DOCKER_USER --password=$DOCKER_PASS $DOCKER_HOST 
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath