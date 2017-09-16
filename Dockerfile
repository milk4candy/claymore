FROM nvidia/cuda:8.0-runtime-ubuntu16.04

RUN apt-get update
RUN apt-get install -y ocl-icd-opencl-dev
RUN apt-get install -y libcurl3
COPY ["ClaymoreV10.0", "/opt/ClaymoreV10.0"]

WORKDIR /opt/ClaymoreV10.0
CMD ["bash"]
