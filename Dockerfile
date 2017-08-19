FROM nvidia/cuda:8.0-runtime-ubuntu16.04

RUN apt-get update
RUN apt-get install -y ocl-icd-opencl-dev
RUN apt-get install -y libcurl3
COPY ["ClaymoreV9.8", "/opt/ClaymoreV9.8"]

WORKDIR /opt/ClaymoreV9.8
ENTRYPOINT ["./ethdcrminer64", "-epool", "eth-asia1.nanopool.org:9999", "-epsw", "x", "-mode", "1", "-ftime", "10", "-tstop", "90", "-ewal"]
CMD ["0xca3e29a0e10d21e530e060394c7490e6c4d14718/minion/milk4candy@gmail.com"]
