#!/bin/sh -e

if [ $# -ne 3 ]
  then
    echo "Usage: run.sh server server-mount-point uid"
    exit 1
fi

adduser -D -u $3 nfsuser
mount -v -t nfs -o nfsvers=4,nolock $1:$2 /mnt/nfs

su - nfsuser -c "cd `pwd`; /bin/sh"