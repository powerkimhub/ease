#!/bin/sh
########
# Install & setup NFS Server on Ubuntu
# 2020.03.20 by powerkim
########
apt-get install -y nfs-common nfs-kernel-server portmap
mkdir /nfs/cloud-driver-libs
echo "/nfs/cloud-driver-libs  *(rw,sync,no_root_squash,no_all_squash,no_subtree_check)" >> /etc/exports
exportfs -r
service nfs-kernel-server restart
exportfs -v
