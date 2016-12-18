#!/bin/bash

KVM="/usr/bin/qemu-system-arm"
#KVM=kvm
CPU="arm1176"
MACHINE="versatilepb"
MEMORY="256"
#MACHINE="virt"
#KERNEL=" -kernel brcm2708/openwrt-15.05.1-brcm2708-bcm2708-Image "
#KERNEL=" -kernel zImage-versatile-2.6.24-rc7.armv5tel  "
#KERNELOPT="-append 'console=ttyS0'"
#HDA=" -hda brcm2708/openwrt-15.05.1-brcm2708-bcm2708-ext4.img " 
HDA=" -sd brcm2708/openwrt-15.05.1-brcm2708-bcm2708-rpi-ext4-sdcard.img "
#NET=" -redir tcp:5022::22 "
#VIDEO=" -curses  "
VIDEO=" -nographic "
SERIAL=" -serial mon:stdio "
#REBOOT=" -no-reboot "

$KVM -cpu $CPU -machine $MACHINE -m $MEMORY $SERIAL $REBOOT $KERNEL $KERNELOPT $HDA $NET $VIDEO


