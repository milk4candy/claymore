FROM milk4candy/claymore10.0:17.9.0

COPY ["ClaymoreV11.8", "/opt/ClaymoreV11.8"]

WORKDIR /opt/ClaymoreV11.8
CMD ["bash"]
