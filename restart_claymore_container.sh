#! /bin/bash

docker stop claymore
docker container prune -f

nvidia-docker run -td --name claymore \
--env GPU_FORCE_64BIT_PTR=0 \
--env GPU_MAX_HEAP_SIZE=100 \
--env GPU_USE_SYNC_OBJECTS=1 \
--env GPU_MAX_ALLOC_PERCENT=100 \
--env GPU_SINGLE_ALLOC_PERCENT=100 \
milk4candy/claymore9.8:17.8.0 \
0xca3e29a0e10d21e530e060394c7490e6c4d14718/${HOSTNAME}/milk4candy@gmail.com
