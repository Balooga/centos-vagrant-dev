if [  ! -d /home/vagrant/.vagrant-installation/sphinx ]
then
    echo Installing Sphinx-doc
    mkdir /home/vagrant/.vagrant-installation/sphinx
    
    sudo yum -y install python-pip
    pip install --upgrade pip
    pip install -U Sphinx
    pip install -U setuptools
    pip install sphinxcontrib-plantuml

    cd ~/
fi
