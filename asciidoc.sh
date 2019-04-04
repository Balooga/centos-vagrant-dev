#!/bin/bash
if [  ! -f /home/vagrant/.vagrant-installation/asciidoc.installed ]
then
    echo Installing Pandoc
    touch /home/vagrant/.vagrant-installation/asciidoc.installed

    yum -y install asciidoc

    cd ~/
fi
