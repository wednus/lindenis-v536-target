#!/bin/bash

pwd=$(dirname $0)
conf=$TINA_BUILD_TOP/.config

S00mpp="S00mpp_imx317"

eval $(awk '/CONFIG_imx278/' $conf)
if [ "$CONFIG_imx278" = "y" ]; then
	S00mpp="S00mpp_imx278"
fi

eval $(awk '/CONFIG_imx307/' $conf)
if [ "$CONFIG_imx307" = "y" ]; then
	S00mpp="S00mpp_imx307"
fi

eval $(awk '/CONFIG_imx386/' $conf)
if [ "$CONFIG_imx386" = "y" ]; then
	S00mpp="S00mpp_imx386"
fi

install -m 777 $pwd/rcK $1/etc/init.d
install -m 777 $pwd/${S00mpp} $1/etc/init.d/S00mpp
#install -m 777 $pwd/S00part $1/etc/init.d
install -m 777 $pwd/S11dev $1/etc/init.d
install -m 777 $pwd/S50usb $1/etc/init.d

install -m 777 $pwd/S10udev    $1/etc/init.d
install -m 777 $pwd/asound.conf    $1/etc
install -m 777 $pwd/S40network    $1/etc/init.d

install -m 777 $pwd/rc.preboot $1/etc/init.d
install -m 777 $pwd/rc.modules $1/etc/init.d
install -m 777 $pwd/rc.final $1/etc/init.d

exit 0

