#!/bin/bash
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y ansible tftpd apache2 isc-dhcp-server syslinux unzip
sudo wget https://releases.hashicorp.com/packer/1.4.3/packer_1.4.3_linux_amd64.zip .
sudo unzip packer_1.4.3_linux_amd64.zip
sudo mv packer /usr/bin/packer
sudo chown root:root /usr/bin/packer
sudo wget https://packages.vmware.com/tools/esx/latest/windows/VMware-tools-windows-10.3.10-12406962.iso .
