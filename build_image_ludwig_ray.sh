#!/bin/bash

# Build development image using Ludwig official image as base

# other valid value is 'plain'
progress=${1:-auto}

docker build --progress ${progress} \
	-t ludwig-ray:latest \
	-f ./Dockerfile_ludwig_ray ../ludwig

