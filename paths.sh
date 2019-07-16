#!/bin/bash

if [ -d $HOME/.local/bin ]
then
    echo 'export PATH=$PATH:$HOME/.local/bin' >> /home/vagrant/.bashrc
fi
if [ -d $HOME/bin ]
then
    echo 'export PATH=$PATH:$HOME/bin' >> /home/vagrant/.bashrc
fi

if [ -d /usr/local/go/bin ]
then
   echo 'export PATH=$PATH:/usr/local/go/bin' >> /home/vagrant/.bashrc
fi
if [ -d $HOME/go ]
then
   echo 'export GOPATH=$HOME/go' >> /home/vagrant/.bashrc
fi
if [ -d ${GOPATH//://bin:}/bin ]
then
   echo 'export PATH=$PATH:${GOPATH//://bin:}/bin' >> /home/vagrant/.bashrc
fi
if [ -d /usr/local/texlive/2019/bin/x86_64-linux ]
then
    echo 'export PATH=$PATH:/usr/local/texlive/2019/bin/x86_64-linux' >> /home/vagrant/.bashrc
fi
