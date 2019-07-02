#!/bin/bash

if [  ! -f /home/vagrant/.vagrant-installation/X11.installed ]
then
    echo Installing X11 Dependencies
    touch /home/vagrant/.vagrant-installation/X11.installed

    yum install -y dnf dnf-plugins-core
    dnf config-manager --add-repo https://copr.fedorainfracloud.org/coprs/admiralnemo/i3wm-el7/repo/epel-7/admiralnemo-i3wm-el7-epel-7.repo
    yum install -y lightdm xorg-x11-xinit-session

    # Dependencies for Emacs
    yum -y install gtk3
    yum -y install librsvg2
    yum -y install ImageMagick
    yum -y install m17n-lib

    #Dependencies for X11
    yum install -y nvidia*
    yum install -y xorg-x11-font*
    yum install -y xorg-x11-xauth
    yum install -y xterm
    yum install -y dejavu-sans-fonts
    yum install -y adobe-source-code-pro-font
    yum install -y adobe-source-sans-pro-fonts
    yum install -y xorg-x11-utils
    yum install -y xorg-x11-server-utils
    yum install -y xorg-x11-app*
    yum groupinstall -y "X Window System"

    # ssh -X -p 2222 -i /path/to/ssh/keyfile vagrant@localhost xclock
    # or
    # vagrant ssh -- -X xclock
    # or
    # ssh -X -p 2222 vagrant@localhost xclock

fi
