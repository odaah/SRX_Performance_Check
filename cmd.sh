#!/bin/bash
 # Collect the current user's ssh and enable passwords
 echo -n "Enter the SSH password for $(whoami) "
 read -s -e password
 echo -ne '\n'
 echo -n "Enter the Enable password for $(whoami) "
 read -s -e enable
 echo -ne '\n'
# Feed the expect script a device list & the collected passwords

#execute the command on distro
for device in `cat ~/srx/devices.txt`; do
 ./cmd_exp.exp $device $password $enable ;
done
