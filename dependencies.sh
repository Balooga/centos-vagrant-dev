echo Updating packages
yum -y makecache fast
yum -y install deltarpm
yum -y update

echo Installing the CentOS 7 Development Tools
yum -y install linux-headers-$(uname -r) epel-release build-essential dkms epel-release
yum -y groupinstall "Development Tools"
yum -y install kernel-devel

echo Installing GNOME Desktop
yum -y groupinstall "GNOME Desktop"

echo Install dependencies for Emacs, PlantUML, etc.
yum -y install yum-utils libacl fortune-mod cowsay graphviz java adobe-source-code-pro-fonts perl-Digest-MD5 maven
yum-builddep -y emacs
