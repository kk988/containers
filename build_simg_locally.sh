#!/bin/bash
# This script builds a Singularity image from a Docker image using a local Docker registry.
set -e

image_name=$1

if [ -z "$image_name" ]; then
    echo "Usage: $0 <image_name>"
    exit 1
fi

SIMG_FILE="${image_name}.simg"

REGISTRY_PORT=5199

if [ -f $SIMG_FILE ]; then
    rm $SIMG_FILE
fi

echo "... Starting registry";
docker run --rm -d -p $REGISTRY_PORT:5000 registry:2.7;
echo "... Building thing";
docker build --platform=linux/amd64 -t localhost:$REGISTRY_PORT/${image_name}:latest .;
echo "... Push PFG to registry";
docker push localhost:$REGISTRY_PORT/${image_name}:latest;
echo "... Create Singularity image from local build";
docker run --rm --platform linux/amd64 --network host -e SINGULARITY_NOHTTPS=1 \
-v .:/home quay.io/singularity/singularity:v4.0.0 build /home/$SIMG_FILE docker://localhost:$REGISTRY_PORT/${image_name}:latest;

# cleanup
echo "... Cleaning up";
docker stop $(docker ps | awk '$2=="registry:2.7" {print $1}');
docker rmi localhost:$REGISTRY_PORT/${image_name}:latest;
docker rmi quay.io/singularity/singularity:v4.0.0;
docker rmi registry:2.7;

