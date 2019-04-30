#!/bin/bash
if [  ! -d /home/vagrant/.vagrant-installation/lein ]
then
    echo Installing Leiningen - https://leiningen.org.
    mkdir /home/vagrant/.vagrant-installation/lein
    cd /home/vagrant/.vagrant-installation/lein
    wget -q -c --progress=dot:giga https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
    ln -s /home/vagrant/.vagrant-installation/lein/lein /home/vagrant/bin/lein
    chmod a+x /home/vagrant/bin/lein
    lein

    cd /home/vagrant/
fi
