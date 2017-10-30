FROM ubuntu:xenial

RUN mkdir /backup
RUN apt-get update && apt-get install -y wget
RUN "${urburl}" -O mktemp
RUN yes | sh mktemp
RUN rm mktemp
