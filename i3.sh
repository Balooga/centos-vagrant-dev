#!/bin/bash

if [ ! -f ~/.vagrant-installation/i3.installed ]
then
    echo Installing the i3 window manager
    touch ~/.vagrant-installation/i3.installed
    sudo yum -y install i3

    tee -a ~/.xinitrc <<EOF
exec i3
EOF

#    mkdir -p ~/.config/i3
#    tee -a ~/.config/i3/config <<EOF
#exec --no-startup-id xrandr --output \$(xrandr | grep -w connected | awk -F'[ +]' '{print \$1}') --auto
#EOF

    tee -a ~/bin/i3-resize.sh <<EOF
xrandr --output \$(xrandr | grep -w connected | awk -F'[ +]' '{print \$1}') --auto

#Add the following to the end of ~/.config/i3/config
#exec --no-startup-id xrandr --output \$(xrandr | grep -w connected | awk -F'[ +]' '{print \$1}') --auto

EOF

    chmod +x ~/bin/i3-resize.sh

    cd ~/
fi
