# Instructions

To build an image update `build` scripts with desired version and location of Ludwig repo for the docker build context.

Example
```
#!/bin/bash

python_version=${1:-3.8}
torch_version=${2:-1.10.0}
torch_vision_version=${3:-0.11.1}
torch_audio_version=${4:-0.10.0}
linux_distro=${5:-buster}

# other valid value is 'plain'
progress=${6:-auto}

  docker build --progress ${progress} \
  --build-arg PYTHON_VERSION=${python_version} \
  --build-arg TORCH_VERSION=${torch_version} \
  --build-arg TORCH_VISION_VERSION=${torch_vision_version} \
  --build-arg TORCH_AUDIO_VERSION=${torch_audio_version} \
  --build-arg LINUX_DISTRO=${linux_distro} \
	-t ludwig_mydev:py${python_version}-torch${torch_version} \
	-f ./Dockerfile_torch ../ludwig

```

cd to this project directory, execute command
```
./build_image_torch.sh
```
