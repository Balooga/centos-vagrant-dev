#!/bin/bash
if [ ! -d /home/vagrant/.vagrant-installation/reveal.js ]
then

    echo Installing Reveal.
    cd /home/vagrant/.vagrant-installation/
    git clone https://github.com/hakimel/reveal.js.git
    ln -s /home/vagrant/.vagrant-installation/reveal.js /home/vagrant/.reveal.js

    cd /home/vagrant/
fi
