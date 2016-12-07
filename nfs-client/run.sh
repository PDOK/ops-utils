#!/bin/bash -e

if [ ! $# -gt 2 ]
  then
    echo "Usage: run.sh server server-mount-point uid [script]"
    exit 1
fi

adduser -u $3 --gecos 'NFSUser' --disabled-password nfsuser
adduser nfsuser sudo
mount -v -t nfs -o nfsvers=4,nolock $1:$2 /mnt/nfs

if [ $# -gt 3 ]
  then
    sudo -u nfsuser bash -c "cd `pwd`; $4"
  else
    sudo -i -u nfsuser
fi