#!/bin/bash
if [  ! -f /home/vagrant/.vagrant-installation/git ]
then
    echo Installing the latest version of Git
#    mkdir /home/vagrant/.vagrant-installation/git
    touch /home/vagrant/.vagrant-installation/git
    sudo yum -y install https://centos7.iuscommunity.org/ius-release.rpm
    sudo yum -y remove git
    sudo yum -y install git2u
fi
