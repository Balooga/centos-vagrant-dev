#!/bin/bash

if [ ! -d /home/vagrant/.vagrant-installation/cmatrix ]
then
    echo Installing cmatrix
	  cd /home/vagrant/.vagrant-installation/
	  git clone https://github.com/abishekvashok/cmatrix.git
    cd /home/vagrant/.vagrant-installation/cmatrix

    #wget https://www.asty.org/cmatrix/dist/cmatrix-1.2a.tar.gz
    #tar xvzf cmatrix-1.2a.tar.gz
    #cd cmatrix-1.2a

    autoreconf -i
    ./configure
    make
    sudo make install
    cd /home/vagrant/

    echo Matrix installation complete.
fi
