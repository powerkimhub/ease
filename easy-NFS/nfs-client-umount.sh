#!/bin/sh
########
# umount #NFS Client on Ubuntu
# 2020.03.20 by powerkim
########
export CBSPIDER_ROOT=$GOPATH/src/github.com/cloud-barista/cb-spider

umount $CBSPIDER_ROOT/cloud-driver-libs
