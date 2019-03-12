#!/bin/bash

if [ ! -f ~/.vagrant-installation/i3.installed ]
then
    echo Installing the i3 window manager
    touch ~/.vagrant-installation/i3.installed
    sudo yum -y install i3

    tee -a ~/.xinitrc <<EOF
exec i3
EOF

    cd ~/
fi
