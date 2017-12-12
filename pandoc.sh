#!/bin/bash
if [  ! -f /home/vagrant/.vagrant-installation/pandoc ]
then
    echo Installing Pandoc
#    mkdir /home/vagrant/.vagrant-installation/pandoc
    touch /home/vagrant/.vagrant-installation/pandoc
    
    yum -y install pandoc

    cd ~/
fi
