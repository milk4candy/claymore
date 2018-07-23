#! /bin/bash
apt-get install -y nvidia-modprobe
wget https://github.com/NVIDIA/nvidia-docker/releases/download/v1.0.1/nvidia-docker_1.0.1-1_amd64.deb
dpkg -i nvidia-docker*.deb
