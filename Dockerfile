FROM ubuntu:xenial

RUN mkdir /backup
RUN apt-get update && apt-get install -y vim curl
RUN curl -L -o /opt/urclient.sh "https://hndl.urbackup.org/Client/2.1.16/UrBackup%20Client%20Linux%202.1.16.sh"

COPY files/start.sh /opt/start.sh
RUN chmod 755 /opt/start.sh