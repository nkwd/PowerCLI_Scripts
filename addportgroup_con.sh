#!/bin/sh

pgstart=1000
pgstop=1020
vswitch=VSwitch0

for portgroup in $(seq $pgstart $pgstop)

do
 esxcfg-vswitch -A "VLAN${portgroup}" $vswitch
 esxcfg-vswitch -v ${portgroup} -p "VLAN${portgroup}" $vswitch
done

echo "Create Successful"
