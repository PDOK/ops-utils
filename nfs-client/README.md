nfs client, mount volumes for copying data in and out

```
docker run -ti --rm --privileged pdok/nfs-client [SERVER] [SERVER-MOUNT] [UID]
```

Performance test
```
fio --randrepeat=1 --ioengine=libaio  --nrfiles=10000 --directory=/tmp/perftest --readwrite=write  --name=test --filesize=100k --iodepth=4 --openfiles=4 --direct=1
```