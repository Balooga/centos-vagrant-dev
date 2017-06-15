if [ ! -d ~/.vagrant-installation/cmatrix ] 
then
    echo Installing cMatrix

    mkdir ~/.vagrant-installation/cmatrix
    cd ~/.vagrant-installation/cmatrix

    wget https://www.asty.org/cmatrix/dist/cmatrix-1.2a.tar.gz
    tar xvzf cmatrix-1.2a.tar.gz
    cd cmatrix-1.2a

    aclocal
    autoconf
    automake -a
    ./configure
    make
    sudo make install
    cd ~/

    echo cMatrix installation complete.
fi
