#!/bin/bash
set -xe

docker run -it --rm \
  --name tf_torch_jpynb \
  -e PYTHONPATH=/opt/project \
  -p 6006:6006 \
  -p 8888:8888 \
  --entrypoint jupyter-notebook \
  -v ${PWD}:/opt/project \
  tf_torch:${1} \
  --ip 0.0.0.0 --allow-root --notebook-dir /opt/project --NotebookApp.token='' --no-browser
