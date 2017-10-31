#!/bin/bash
wget "http://hndl.urbackup.org/Client/2.0.31/UrBackup%20Client%20Linux%202.0.31.sh" -O urbtemp
echo yes 4 | bash urbtemp
rm urbtemp

urbackupclientbackend -d
urbackupclientctl add-backupdir -d /backup