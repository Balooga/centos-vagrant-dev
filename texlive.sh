#!/bin/bash

# To remove a previous installation
# rm -rf /usr/local/texlive/2016
# rm -rf ~/.texlive2017

if [ ! -d /usr/local/texlive/2017 ]
then
    echo Downloading TexLive.
    wget -q -c --progress=dot:giga http://muug.ca/mirror/ctan/systems/texlive/Images/texlive.iso

    echo Installing TexLive.
    mount -t iso9660 -o ro,loop,noauto texlive.iso /mnt

    # New installations of texlive require a new texlive.profile
    # which is created following a successful install of texlive.
    # texlive.profile can be found in /usr/local/texlive/2017/tlpkg/texlive.profile
    cd /mnt
    ./install-tl -profile /home/vagrant/texlive.profile

    cd /home/vagrant/
    umount /mnt
    rm /home/vagrant/texlive.iso
    rm /home/vagrant/texlive.profile

    /usr/local/texlive/2017/bin/x86_64-linux/tlmgr path add
    /usr/local/texlive/2017/bin/x86_64-linux/tlmgr -repository http://mirror.ctan.org/systems/texlive/tlnet install graphics-def

    /usr/local/texlive/2017/bin/x86_64-linux/tlmgr -repository http://mirror.ctan.org/systems/texlive/tlnet update --self

    echo Updating TexLive.
    /usr/local/texlive/2017/bin/x86_64-linux/tlmgr -repository http://mirror.ctan.org/systems/texlive/tlnet update --all

    echo Install Sphinx-Doc style dependencies
    /usr/local/texlive/2017/bin/x86_64-linux/tlmgr -repository http://mirror.ctan.org/systems/texlive/tlnet install tabulary
    /usr/local/texlive/2017/bin/x86_64-linux/tlmgr -repository http://mirror.ctan.org/systems/texlive/tlnet install fncychap
    /usr/local/texlive/2017/bin/x86_64-linux/tlmgr -repository http://mirror.ctan.org/systems/texlive/tlnet install framed
    /usr/local/texlive/2017/bin/x86_64-linux/tlmgr -repository http://mirror.ctan.org/systems/texlive/tlnet install threeparttable
    /usr/local/texlive/2017/bin/x86_64-linux/tlmgr -repository http://mirror.ctan.org/systems/texlive/tlnet install wrapfig
    /usr/local/texlive/2017/bin/x86_64-linux/tlmgr -repository http://mirror.ctan.org/systems/texlive/tlnet install capt-of
    /usr/local/texlive/2017/bin/x86_64-linux/tlmgr -repository http://mirror.ctan.org/systems/texlive/tlnet install multirow
    /usr/local/texlive/2017/bin/x86_64-linux/tlmgr -repository http://mirror.ctan.org/systems/texlive/tlnet install eqparbox
    /usr/local/texlive/2017/bin/x86_64-linux/tlmgr -repository http://mirror.ctan.org/systems/texlive/tlnet install environ
    /usr/local/texlive/2017/bin/x86_64-linux/tlmgr -repository http://mirror.ctan.org/systems/texlive/tlnet install trimspaces

    echo And latex fonts....
    /usr/local/texlive/2017/bin/x86_64-linux/tlmgr -repository http://mirror.ctan.org/systems/texlive/tlnet install collection-fontsrecommended
    /usr/local/texlive/2017/bin/x86_64-linux/tlmgr -repository http://mirror.ctan.org/systems/texlive/tlnet install collection-fontsextra

    /usr/local/texlive/2017/bin/x86_64-linux/tlmgr -repository http://mirror.ctan.org/systems/texlive/tlnet install epstopdf

    tee -a /home/vagrant/.bash_profile <<EOF
PATH=$PATH:/usr/local/texlive/2017/bin/x86_64-linux
export PATH
EOF

    echo TexLive Installation Complete.
fi
