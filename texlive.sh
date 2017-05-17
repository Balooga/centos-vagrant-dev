if [ ! -d /usr/local/texlive ]
then
    echo Downloading TexLive.
    wget -q -c --progress=dot:giga http://mirror.hmc.edu/ctan/systems/texlive/Images/texlive.iso

    echo Installing TexLive.
    mount -t iso9660 -o ro,loop,noauto texlive.iso /mnt

    cd /mnt
    ./install-tl -profile /home/vagrant/texlive.profile

    cd /home/vagrant/
    umount /mnt
    rm /home/vagrant/exlive.iso
    rm /home/vagrant/texlive.profile

    /usr/local/texlive/2016/bin/x86_64-linux/tlmgr path add
    /usr/local/texlive/2016/bin/x86_64-linux/tlmgr install graphics-def

    /usr/local/texlive/2016/bin/x86_64-linux/tlmgr update --self


    echo Updating TexLive.
    /usr/local/texlive/2016/bin/x86_64-linux/tlmgr update --all

    echo TexLive Installation Complete.
fi
