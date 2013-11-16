#!/bin/sh

serverip=
username=
password=
vmname=

Connect-VIServer -Server $serverip -username $username -Password $password
Get-VM $vmname | Get-NetworkAdapter | Set-NetworkAdapter -Type Vmxnet3
