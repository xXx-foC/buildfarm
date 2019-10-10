scripts and tools for buildfarm

prerequisites for packer and ESXi:

install ovftool on control host(where you are running packer)
in packer json must have vnc_disable_password for esxi versions => 6.5
on esxi host must run command:
     esxcli system settings advanced set -o /Net/GuestIPHack -i 1


ansible version=2.8.5
Packer v1.0.4
ESX 6.7.0

