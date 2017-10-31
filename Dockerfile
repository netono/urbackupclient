FROM ubuntu:14.04

RUN mkdir /backup
RUN apt-get update && apt-get install -y wget

COPY files/start.sh /opt/start.sh
RUN chmod 755 /opt/start.sh
CMD /opt/start.sh