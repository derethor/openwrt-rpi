# OpenWRT RecunchoMaker RPI3

### Files

*docker/Dockerfile* : build enviroment

*build.sh*: easy build the docker image

*rmall.sh*: easy rm all running docker images

*run.sh*: easy run the compilation image


*openwrt/config*: include config files for openwrt build

*qemu/boot-x64.sh*: virtual run the x64 openwrt image

*qemu/boot-arm.sh*: virtual run the arm image

# Useful commands

*./scripts/diffconfig.sh > myconfig.diff*  write the changes to diff config
*cp myconfig.diff .config && make defconfig* expand config



