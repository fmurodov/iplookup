#!/bin/bash
#ip address geo lookup
#ip address list file in $1
# Autor Firdavs Murodov <firdavs@root.tj>
# Date Mar 31, 2015 18:00

bin=geoiplookup
IPS=$1

for i in `cat $IPS | grep -E "^([0-9]{1,3}\.){3}[0-9]{1,3}$"`
do echo  $i	$($bin $i| cut -d":" -f2)
done

exit 0
