#!/bin/bash
if [  ! -f /home/vagrant/.vagrant-installation/clang.installed ]
then
	echo Installing C/C++ dependencies
    yum -y install clang
    touch /home/vagrant/.vagrant-installation/clang.installed
fi
