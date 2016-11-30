FROM alpine:latest

RUN apk update && apk add --update nfs-utils && rm -rf /var/cache/apk/*
ADD run.sh /usr/local/bin/run.sh

WORKDIR /mnt/nfs
ENTRYPOINT ["/usr/local/bin/run.sh"]