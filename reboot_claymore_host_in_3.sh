#! /bin/bash

docker stop claymore
docker container prune -f

sleep 3m

reboot

