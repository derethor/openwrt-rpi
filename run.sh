#!/bin/bash

HOSTDIR=$(pwd)/openwrt
CONTAINERDIR=/home/openwrt

VOLUMEMAP="-v $HOSTDIR:$CONTAINERDIR"
#TMPFS="--tmpfs /tmp:rw,exec,size=16G,mode=777"
HOSTNAME=" -h buildhost"
#NETWORK="--network host"
mkdir -p $HOSTDIR

docker run --rm -it $HOSTNAME $VOLUMEMAP $TMPFS $NETWORK openwrt-build /bin/bash

