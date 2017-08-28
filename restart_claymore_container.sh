#! /bin/bash

docker stop claymore
docker container prune -f

nvidia-docker run -d --name claymore \
--env GPU_FORCE_64BIT_PTR=0 \
--env GPU_MAX_HEAP_SIZE=100 \
--env GPU_USE_SYNC_OBJECTS=1 \
--env GPU_MAX_ALLOC_PERCENT=100 \
--env GPU_SINGLE_ALLOC_PERCENT=100 \
milk4candy/claymore9.8:17.8.0 \
0x2b9EdbAE143d22f2AF6bcED530fFf2d9eCd78FF3/${HOSTNAME}/milk4candy@gmail.com
