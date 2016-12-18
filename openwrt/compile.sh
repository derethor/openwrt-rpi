#!/bin/bash

WRTDIR=/home/openwrt/src

#mkdir -p $WRTDIR
#chown -R openwrt:openwrt $WRTDIR
#cd $WRTDIR

git clone https://github.com/openwrt/openwrt.git
git checkout tags/15.05.1

#./scripts/feeds update -a
#./scripts/feeds install -a

cp /home/openwrt/config/config-rpizero.diff .config
make defconfig
ionice -c 3 nice -n19 make -j 2

