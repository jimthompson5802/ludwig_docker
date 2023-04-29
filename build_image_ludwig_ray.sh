#!/bin/bash

# other valid value is 'plain'
progress=${1:-auto}

docker build --progress ${progress} \
	-t ludwig-ray:latest \
	-f ./Dockerfile_ludwig_ray ../ludwig

