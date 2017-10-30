FROM ubuntu:xenial

RUN mkdir /backup
RUN apt-get update && apt-get install -y wget
RUN ${urb}