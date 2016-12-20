# OpenWRT RecunchoMaker RPI3

### Files

**docker/Dockerfile** : build enviroment

**build.sh**: easy build the docker image

**rmall.sh**: easy rm all running docker images

**run.sh**: easy run the compilation image


**openwrt/config**: include config files for openwrt build (see below)

**qemu/boot-x64.sh**: virtual run the x64 openwrt image

**qemu/boot-arm.sh**: virtual run the arm image

# Download and build

inside the build docker, use the directory openwrt/src

cd openwrt/src

git clone https://github.com/openwrt/openwrt.git master

cp <config-diff> .config

make defconfig

ionice -c 3 nice -n19 make -j 3

# Useful commands

**./scripts/diffconfig.sh > myconfig.diff**  write the changes to diff config

**cp myconfig.diff .config && make defconfig** expand config



