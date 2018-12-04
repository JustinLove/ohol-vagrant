#!/bin/sh

# VM GUI desktop
sudo apt-get install -y xfce4 virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11 build-essential
sudo VBoxClient --clipboard
sudo VBoxClient --display
sudo VBoxClient --checkhostversion
sudo VBoxClient --seamless
sudo usermod -a -G audio vagrant

#desktop command: startxfce4&
