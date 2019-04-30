#!/bin/bash
if [ ! -d /home/vagrant/.vagrant-installation/spacemacs/ ]
then
    echo Installing Spacemacs.
    cd /home/vagrant/.vagrant-installation/
    git clone https://github.com/syl20bnr/spacemacs
fi

if [ ! -d /home/vagrant/.emacs.d/ ]
then
    echo Linking .spacemacs to .emacs.d
    ln -s /home/vagrant/.vagrant-installation/spacemacs/ /home/vagrant/.emacs.d
fi
