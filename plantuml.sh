#!/bin/bash
if [ ! -d /home/vagrant/.vagrant-installation/plantuml/ ]
then
    mkdir /home/vagrant/.vagrant-installation/plantuml
fi

if [ ! -f  /home/vagrant/.vagrant-installation/plantuml/plantuml.jar ]
then
    echo Installing PlantUML.
    cd /home/vagrant/.vagrant-installation/plantuml
    wget c --progress=dot:giga http://sourceforge.net/projects/plantuml/files/plantuml.jar
    chmod 755 /home/vagrant/.vagrant-installation/plantuml/plantuml.jar
    ln -s /home/vagrant/.vagrant-installation/plantuml/plantuml.jar /home/vagrant/.vagrant-installation/plantuml.jar
    cd /home/vagrant/
fi
