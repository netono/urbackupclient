FROM ubuntu:14.04

RUN mkdir /backup

ADD files/start.sh /opt/start.sh
RUN chmod +x /opt/start.sh
CMD ["/opt/start.sh"]