FROM ubuntu:xenial

RUN mkdir /backup
RUN apt-get update && apt-get install -y wget
RUN TF='mktemp' && wget "${urb-url}/x?a=download_client&lang=en&clientid=${urb-clientid}&authkey=${urb-authkey}&os=linux" -O $TF && sh $TF; rm $TF