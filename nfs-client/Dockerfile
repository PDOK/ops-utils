FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y nfs-common fio sudo && \
    rm -rf /var/lib/apt/lists/*

ADD run.sh /usr/local/bin/run.sh

WORKDIR /mnt/nfs
ENTRYPOINT ["/usr/local/bin/run.sh"]