#!/bin/sh -e

if [ ! $# -gt 2 ]
  then
    echo "Usage: run.sh server server-mount-point uid [script]"
    exit 1
fi

adduser -D -u $3 nfsuser
mount -v -t nfs -o nfsvers=4,nolock $1:$2 /mnt/nfs

if [ $# -gt 3 ]
  then
    su - nfsuser -c "cd `pwd`; $4"
  else
    su - nfsuser -c "cd `pwd`; /bin/sh"
fi