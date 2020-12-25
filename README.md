# brook_relay-docker
brook_relay docker image. <https://github.com/txthinking/brook>

# How to Setup
```bash
docker container run -d \
    --restart=always \
    --name brook_relay \
    -e server_ip=1.2.3.4 \ # ip for brook server
    -e server_port=9999 \ # port for brook server
    -e listen_port=9999 \ # listen port for brook relay
    --net host \
    217heidai/brook_relay
```

# How to Upgrade
1. stop and remove your existing brook_relay container.
2. setup a new brook_relay container.

## ChangeLog
| Date      | Content                                                              |
|-----------|----------------------------------------------------------------------|
| 2020.12.24 | brook_relay v20210101 |
