#!/bin/bash
echo Updating packages

# yum -y makecache fast
yum -y makecache

if ! rpm -q deltarpm;  
   then
       yum -y install deltarpm
fi

yum -y update

if [  ! -f /home/vagrant/.vagrant-installation/dev ]
then
    echo Installing the CentOS 7 Development Tools
#    mkdir /home/vagrant/.vagrant-installation/dev
    touch /home/vagrant/.vagrant-installation/dev
    yum -y install linux-headers-$(uname -r) epel-release build-essential dkms epel-release
    yum -y groupinstall "Development Tools"
    yum -y install kernel-devel
fi

if [  ! -f /home/vagrant/.vagrant-installation/gnome ]
then
    echo Installing GNOME Desktop
#    mkdir /home/vagrant/.vagrant-installation/gnome
    touch /home/vagrant/.vagrant-installation/gnome
    yum -y groupinstall "GNOME Desktop"

    yum -y remove tracker
fi

if [  ! -f /home/vagrant/.vagrant-installation/deps ]
then
    echo Install dependencies for Emacs, PlantUML, etc.
#    mkdir /home/vagrant/.vagrant-installation/deps
    touch /home/vagrant/.vagrant-installation/deps
    yum -y install yum-utils libacl fortune-mod cowsay graphviz java adobe-source-code-pro-fonts perl-Digest-MD5 maven
    yum-builddep -y emacs
fi
