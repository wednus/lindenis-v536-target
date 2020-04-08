#!/bin/bash

pwd=$(dirname $0)

cp -vf $pwd/udhcpd.conf $1/etc
mkdir -p $1/usr/share/udhcpc
cp -vf $pwd/default.script $1/usr/share/udhcpc

exit 0
