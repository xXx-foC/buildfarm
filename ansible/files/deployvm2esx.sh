#!/bin/bash

#inventory_hostname, ovfsrc, esxUser esxpw esxhost packer_directory

vmname=$1
macaddr=$2
ovfsrc=$3
esxUser=$4
esxHost=$5
esxpw=$6

image_directory=$(dirname $ovfsrc)
image_name=$(basename $ovfsrc | cut -d '.' -f1)

cd $image_directory

rm -f $image_name.mf 
sed  "s/00:50:56:00:00:00/$macaddr/" $ovfsrc > $vmname.ovf

/usr/bin/openssl sha256 $vmname.ovf *.nvram *.vmdk > $vmname.mf

/usr/bin/ovftool \
--disableVerification \
--noSSLVerify \
--datastore=datastore1 \
--network="VM Network" \
--powerOn \
--X:waitForIp \
--name=$vmname \
"$image_directory/$vmname.ovf" \
"vi://$esxUser:$esxpw@$esxHost"

rm -f $vmname.ovf $vmname.mf
