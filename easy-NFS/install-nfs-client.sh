#!/bin/sh
########
# Install & setup NFS Client on Ubuntu
# 2020.03.20 by powerkim
########
export NFS_SERVER=node01
export CBSPIDER_ROOT=$GOPATH/src/github.com/cloud-barista/cb-spider

apt-get install portmap nfs-common
mkdir -p $CBSPIDER_ROOT/cloud-driver-libs
mount $NFS_SERVER:/nfs/cloud-driver-libs $CBSPIDER_ROOT/cloud-driver-libs
