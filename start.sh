#!/bin/bash
wget "http://hndl.urbackup.org/Client/${urbversion}/UrBackup%20Client%20Linux%20${urbversion}.sh" -O urbtemp
yes 4 | sh urbtemp
rm urbtemp
service urbackupclientbackend restart

urbackupclientctl add-backupdir -d /backup