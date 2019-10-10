#!/bin/sh
for i in `/bin/vim-cmd vmsvc/getallvms | grep $1 | awk '{print $1}'`
do
/bin/vim-cmd vmsvc/get.guest $i | grep ipAddress | sed -n 1p | cut -d '"' -f 2
done
