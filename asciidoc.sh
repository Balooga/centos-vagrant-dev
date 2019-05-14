#!/bin/bash
if [  ! -f /home/vagrant/.vagrant-installation/asciidoc.installed ]
then
    echo Installing AsciiDoctor
    touch /home/vagrant/.vagrant-installation/asciidoc.installed

    yum -y install asciidoctor
    gem install asciidoctor-diagram

    cd /home/vagrant/
fi
