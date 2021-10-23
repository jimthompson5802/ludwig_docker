#!/bin/bash

python_version=${1:-3.8}
torch_version=${2:-1.9.0}
torch_vision_version=${3:-0.10.0}
torch_audio_version=${4:-0.9.0}
linux_distro=${5:-buster}

# other valid value is 'plain'
progress=${6:-auto}

  docker build --progress ${progress} \
  --build-arg PYTHON_VERSION=${python_version} \
  --build-arg TORCH_VERSION=${torch_version} \
  --build-arg TORCH_VISION_VERSION=${torch_vision_version} \
  --build-arg TORCH_ADUIO_VERSION=${torch_aduio_version} \
  --build-arg LINUX_DISTRO=${linux_distro} \
	-t ludwig_mydev:py${python_version}-torch${torch_version} \
	-f ./Dockerfile_torch ../ludwig



#	--no-cache \
