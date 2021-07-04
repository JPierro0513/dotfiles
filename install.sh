#!/bin/bash

#Setup and enable network
echo "Lauching iwctl..."
iwctl

echo "Pinging arhclinux.org. Use CTL+C to stop..."
ping -c 3 archlinux.org

timedatectl set-ntp true

#Partition the disk
echo "Lauching fdisk..."
cfdisk /dev/nvme0n1
echo "Which ext4: "
read MAIN_PART
mkfs.ext4 $MAIN_PART
echo "Which swap: "
read SWAP_PART
mkswap $SWAP_PART
echo "Which boot: "
read BOOT_PART
