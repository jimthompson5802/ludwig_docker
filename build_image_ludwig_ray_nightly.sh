#!/bin/bash

# Build development image using Ludwig official image as base

# base image tag
tag=${1:-nightly}

# other valid value is 'plain'
progress=${2:-auto}

docker build --progress ${progress} \
  --build-arg BASE_IMAGE_TAG=${tag} \
	-t ludwig-ray:${tag} \
	-f ./Dockerfile_ludwig_ray_nightly ../ludwig

