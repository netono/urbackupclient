FROM ubuntu:14.04

RUN mkdir /backup

COPY start.sh /opt/start.sh
RUN chmod +x /opt/start.sh