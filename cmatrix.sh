#!/bin/bash

if [ ! -d ~/.vagrant-installation/cmatrix ]
then
    echo Installing cmatrix
	  cd ~/.vagrant-installation/
	  git clone https://github.com/abishekvashok/cmatrix.git
    cd ~/.vagrant-installation/cmatrix

    #wget https://www.asty.org/cmatrix/dist/cmatrix-1.2a.tar.gz
    #tar xvzf cmatrix-1.2a.tar.gz
    #cd cmatrix-1.2a

    autoreconf -i
    ./configure
    make
    sudo make install
    cd ~/

    echo Matrix installation complete.
fi
