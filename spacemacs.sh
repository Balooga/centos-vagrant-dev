#!/bin/bash
# if [ ! -d ~/.spacemacs.d/ ]
# if [ ! -d ~/.vagrant-installation/dot-emacs/ ]
# then
#   cd ~/.vagrant-installation/
#   git clone https://github.com/Balooga/dot-emacs.git
# fi
# cd ~/.vagrant-installation/dot-emacs/
# git pull 
# ln -s ~/.vagrant-installation/dot-emacs/.spacemacs.d/ ~/.spacemacs.d
# fi

if [ ! -d ~/.vagrant-installation/spacemacs/ ]
then
    echo Installing Spacemacs.
    cd ~/.vagrant-installation/
    git clone https://github.com/syl20bnr/spacemacs
fi

if [ ! -d ~/.emacs.d/ ]
then
    echo Linking .spacemacs to .emacs.d
    ln -s ~/.vagrant-installation/spacemacs/ ~/.emacs.d
fi
