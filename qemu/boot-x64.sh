#!/bin/bash

ID=openwrt
HOMEDIR=$(pwd)
MAC=$(echo -n 00:60:2F; dd bs=1 count=3 if=/dev/random 2>/dev/null |hexdump -v -e '/1 ":%02X"')
KVM="ionice -c 3 nice -n19 kvm"

SDA=" -drive file=$HOMEDIR/$1,if=virtio "
#CDROM=" -cdrom $HOMEDIR/$1 -boot d "
KVMDISPLAY=" -curses "
#KVMDISPLAY=" -display none "
NETDEV="-netdev tap,id=$ID.0,ifname=tap$ID,script=/media/data/data2/linux/kvm/qemu-ifup -device virtio-net-pci,netdev=$ID.0,mac=$MAC"

exec $KVM \
     -cpu host -enable-kvm \
     $SDA $SDF $SDG $SWP $CDROM $NETDEV \
     -m 512 \
     -name $ID \
     $KVMDISPLAY \
     -pidfile /run/$ID-kvm.pid

