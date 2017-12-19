#!/bin/bash
echo Installing C/C++ dependencies

if [  ! -f /home/vagrant/.vagrant-installation/clang ]
then
    yum -y install clang
    touch /home/vagrant/.vagrant-installation/clang
fi
