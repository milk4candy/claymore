#! /bin/bash

docker container prune -f

nvidia-docker run -td --name claymore \
--env GPU_FORCE_64BIT_PTR=0 \
--env GPU_MAX_HEAP_SIZE=100 \
--env GPU_USE_SYNC_OBJECTS=1 \
--env GPU_MAX_ALLOC_PERCENT=100 \
--env GPU_SINGLE_ALLOC_PERCENT=100 \
milk4candy/claymore10.0:17.9.0 \
./ethdcrminer64 \
-ftime 10 -tstop 92 \
-epool eth-asia1.nanopool.org:9999 -epsw x -ewal 0x2b9EdbAE143d22f2AF6bcED530fFf2d9eCd78FF3/${HOSTNAME}/milk4candy@gmail.com \
-dcoin lbc dcri 30 -dpool stratum+tcp://lbry.suprnova.cc:6256 -dwal milk4candy.${HOSTNAME} -dpsw ooxx
