FROM ubuntu:14.04

RUN mkdir /backup
RUN apt-get update && apt-get install -y wget
RUN wget "http://hndl.urbackup.org/Client/2.0.31/UrBackup%20Client%20Linux%202.0.31.sh" -O mktemp
RUN yes 4 | sh mktemp
RUN rm mktemp
