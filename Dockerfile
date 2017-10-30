FROM ubuntu:xenial

RUN mkdir /backup
RUN apt-get update && apt-get install -y wget
RUN TF='mktemp' && wget "http://hndl.urbackup.org/Client/2.1.16/UrBackup%20Client%20Linux%202.1.16.sh" -O $TF && sh $TF; rm $TF /Y
