#!/bin/bash
echo Updating packages

# yum -y makecache fast
yum -y makecache

if ! rpm -q deltarpm;  
   then
       yum -y install deltarpm
fi

yum -y update

if [  ! -f /home/vagrant/.vagrant-installation/dev.installed ]
then
    echo Installing the CentOS 7 Development Tools
#    mkdir /home/vagrant/.vagrant-installation/dev
    touch /home/vagrant/.vagrant-installation/dev.installed
    yum -y install linux-headers-$(uname -r) epel-release build-essential dkms epel-release
    yum -y groupinstall "Development Tools"
    yum -y install kernel-devel
    yum -y install cmake
    yum -y install clang
    yum -y install valgrind
    yum -y install the_silver_searcher
    yum -y install libXScrnSaver # Required for Markdown viewer "vmd"
    yum -y install nodejs
    sudo npm install -g vmd
    sudo npm install -g tern
    yum -y install ack
fi

if [  ! -f /home/vagrant/.vagrant-installation/gnome.installed ]
then
    echo Installing GNOME Desktop
#    mkdir /home/vagrant/.vagrant-installation/gnome
    touch /home/vagrant/.vagrant-installation/gnome.installed
    yum -y groupinstall "GNOME Desktop"

    yum -y remove tracker
fi

if [  ! -f /home/vagrant/.vagrant-installation/deps.installed ]
then
    echo Install various dependencies
#    mkdir /home/vagrant/.vagrant-installation/deps
    touch /home/vagrant/.vagrant-installation/deps.installed
    yum -y install yum-utils libacl fortune-mod cowsay graphviz java adobe-source-code-pro-fonts perl-Digest-MD5 maven xterm
    yum-builddep -y emacs
fi
