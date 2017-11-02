#!/bin/bash
wget "http://hndl.urbackup.org/Client/${urbversion}/UrBackup%20Client%20Linux%20${urbversion}.sh" -O urbtemp

yes 4 | sh urbtemp

kill -9 $(pidof urbackupclientbackend)
rm -f /etc/init.d/urbackupclientbackend
unalias cp
cp -rf /opt/urbackupclient /etc/default

urbackupclientbackend