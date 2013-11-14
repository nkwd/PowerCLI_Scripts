#!/bin/sh

vlan=$(cat vlan)
vswitch=VSwitch0

for portgroup in $vlan

do
 esxcfg-vswitch -A "VLAN${portgroup}" $vswitch
 esxcfg-vswitch -v ${portgroup} -p "VLAN${portgroup}" $vswitch
done

echo "Create Successful"
