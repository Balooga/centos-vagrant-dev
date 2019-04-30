#!/bin/bash
if [ ! -d /home/vagrant/.vagrant-installation/dot-emacs/ ]
then
  cd /home/vagrant/.vagrant-installation/
  git clone https://github.com/Balooga/dot-emacs.git
fi

if [ ! -d /home/vagrant/.spacemacs.d/ ]
then
    echo Linking .spacemacs.d
    ln -s /home/vagrant/.vagrant-installation/dot-emacs/.spacemacs.d/ /home/vagrant/.spacemacs.d
fi
