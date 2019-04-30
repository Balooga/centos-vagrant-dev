#!/bin/bash

if [ ! -f /home/vagrant/.vagrant-installation/i3.installed ]
then
    echo Installing the i3 window manager
    touch /home/vagrant/.vagrant-installation/i3.installed
    sudo yum -y install i3

    tee -a /home/vagrant/.xinitrc <<EOF
exec i3
EOF

    tee -a /home/vagrant/.config/i3/config <<EOF
exec --no-startup-id xrandr --output $(xrandr | grep -w connected | awk -F'[ +]' '{print $1}') --auto
EOF

    tee -a /home/vagrant/bin/i3-resize.sh <<EOF
xrandr --output $(xrandr | grep -w connected | awk -F'[ +]' '{print $1}') --auto
EOF

    chmod +x /home/vagrant/bin/i3-resize.sh

    cd /home/vagrant/
fi
