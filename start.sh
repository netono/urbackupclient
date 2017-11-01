#!/bin/bash
wget "http://hndl.urbackup.org/Client/${urbversion}/UrBackup%20Client%20Linux%20${urbversion}.sh" -O urbtemp

yes 4 | sh urbtemp

urbackupclientbackend