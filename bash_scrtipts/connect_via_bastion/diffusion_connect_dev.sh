#!/bin/sh
IP=`ping -c1 -n $1 | head -n1 | sed "s/.*(\([0-9]*\.[0-9]*\.[0-9]*\.[0-9]*\)).*/\1/g"`
echo $IP
connect_dev.sh $IP 