#!/bin/bash

PASSWD=ucloudwxh
PORT=11115
METHOD=chacha20

docker pull shadowsocks/shadowsocks-libev:edge
docker run -e PASSWORD=$PASSWD -e METHOD=$METHOD -e ARGS=-v --restart always -p $PORT:8388 -p $PORT:8388/udp -d shadowsocks/shadowsocks-libev
