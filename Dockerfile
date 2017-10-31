FROM ubuntu:14.04

RUN mkdir /backup
RUN apt-get update && apt-get install -y wget
RUN wget "http://hndl.urbackup.org/Client/2.1.16/UrBackup%20Client%20Linux%202.1.16.sh" -O mktemp
RUN yes 4 | sh mktemp
RUN rm mktemp
RUN urbackupclientbackend -d
RUN urbackupclientctl add-backupdir -d /backup
