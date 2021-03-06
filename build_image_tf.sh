#!/bin/bash

python_version=${1:-3.7}
tensorflow_version=${2:-2.5.0}
linux_distro=${3:-buster}

# other valid value is 'plain'
progress=${4:-auto}

docker build --progress ${progress} \
  --build-arg PYTHON_VERSION=${python_version} \
  --build-arg TENSORFLOW_VERSION=${tensorflow_version} \
  --build-arg LINUX_DISTRO=${linux_distro} \
	-t ludwig_mydev:py${python_version}-tf${tensorflow_version} \
	-f ./Dockerfile_mydev ../ludwig



#	--no-cache \
