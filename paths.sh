#!/bin/bash

if [ -d $HOME/.local/bin ]
then
    echo 'PATH=$PATH:$HOME/.local/bin' >> /home/vagrant/.bashrc
fi
if [ -d $HOME/bin ]
then
    echo 'PATH=$PATH:$HOME/bin' >> /home/vagrant/.bashrc
fi

if [ -d /usr/local/go/bin ]
then
   echo 'PATH=$PATH:/usr/local/go/bin' >> /home/vagrant/.bashrc
fi
if [ -d $HOME/go ]
then
   echo 'GOPATH=$HOME/go' >> /home/vagrant/.bashrc
fi
if [ -d ${GOPATH//://bin:}/bin ]
then
   echo 'PATH=$PATH:${GOPATH//://bin:}/bin' >> /home/vagrant/.bashrc
fi
if [ -d /usr/local/texlive/2019/bin/x86_64-linux ]
then
    echo 'PATH=$PATH:/usr/local/texlive/2019/bin/x86_64-linux' >> /home/vagrant/.bashrc
fi

echo 'export GOPATH' >> /home/vagrant/.bashrc
echo 'export PATH' >> /home/vagrant/.bashrc
