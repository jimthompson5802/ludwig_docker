#!/bin/bash

python_version=${1:-3.8}
linux_distro=${2:-buster}

# other valid value is 'plain'
progress=${3:-auto}

  docker build --progress ${progress} \
  --build-arg PYTHON_VERSION=${python_version} \
  --build-arg LINUX_DISTRO=${linux_distro} \
	-t ludwig_torch:py${python_version}-ray21 \
	-f ./Dockerfile_torch_ray21 ../ludwig



#	--no-cache \
