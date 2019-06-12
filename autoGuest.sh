#!/bin/bash

cd ~/Desktop

mkdir AutoGuestDir

cd AutoGuestDir

##install headers
sudo apt-get install linux-headers-$(uname -r)

##download VBoxGuestAdditions_<version #>.iso from VBox website
wget -O VBoxGuestAdditions.iso https://download.virtualbox.org/virtualbox/6.0.8/VBoxGuestAdditions_6.0.8.iso

##mount iso
sudo mount -o loop VBoxGuestAdditions.iso /iso

##change to iso directory
cd iso

##add run permissions to VBoxLinuxAdditions.run
chmod +x VBoxLinuxAdditions.run

##run VBoxLinuxAdditions.run
./VBoxLinuxAdditions.run

##unmount
##sudo umount /iso

##delete files
##insert

##reboot machine
sudo reboot

