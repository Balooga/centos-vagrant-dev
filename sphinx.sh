echo Installing Sphinx-doc
yum -y install python-pip
pip install --upgrade pip
pip install -U Sphinx
pip install -U setuptools
pip install sphinxcontrib-plantuml

yum -y install pandoc
