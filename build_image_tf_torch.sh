#!/bin/bash

python_version=${1:-3.8}
tensorflow_version=${2:-2.5.0}
torch_version=${3:-1.9.0}
torch_vision_version=${4:-0.10.0}
torch_audio_version=${5:-0.9.0}
linux_distro=${6:-buster}

# other valid value is 'plain'
progress=${7:-auto}

  docker build --progress ${progress} \
  --build-arg PYTHON_VERSION=${python_version} \
  --build-arg TORCH_VERSION=${torch_version} \
  --build-arg TORCH_VISION_VERSION=${torch_vision_version} \
  --build-arg TORCH_ADUIO_VERSION=${torch_aduio_version} \
  --build-arg TENSORFLOW_VERSION=${tensorflow_version} \
  --build-arg LINUX_DISTRO=${linux_distro} \
	-t tf_torch:py${python_version}-tf${tensorflow_version}-torch${torch_version} \
	-f ./Dockerfile_tf_torch .
