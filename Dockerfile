FROM nvidia/cuda:8.0-runtime-ubuntu16.04

RUN apt-get update
RUN apt-get install -y ocl-icd-opencl-dev
RUN apt-get install -y libcurl3
COPY ["ClaymoreV9.8", "/opt/ClaymoreV9.8"]

WORKDIR /opt/ClaymoreV9.8
ENTRYPOINT ["./ethdcrminer64", "-epool", "eth-asia1.nanopool.org:9999", "-epsw", "x", "-mode", "1", "-ftime", "10", "-tstop", "90", "-ewal"]
CMD ["0x2b9EdbAE143d22f2AF6bcED530fFf2d9eCd78FF3/minion/milk4candy@gmail.com"]
