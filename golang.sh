#!/bin/bash
if [  ! -f /home/vagrant/.vagrant-installation/golang.installed ]
then
    echo Installing Golang
    touch /home/vagrant/.vagrant-installation/golang.installed

    cd ~/.vagrant-installation
    wget https://dl.google.com/go/go1.11.linux-amd64.tar.gz
    sudo tar -C /usr/local -xzf go1.11.linux-amd64.tar.gz

    echo 'export PATH=$PATH:/usr/local/go/bin' >> /home/vagrant/.bash_profile
    echo 'export GOPATH=~/go' >> /home/vagrant/.bash_profile
    #echo 'export GOPATH=~/Documents/go' >> /home/vagrant/.bash_profile
    echo 'export PATH=$PATH:${GOPATH//://bin:}/bin' >> /home/vagrant/.bash_profile

    export PATH=$PATH:/usr/local/go/bin >> /home/vagrant/.bash_profile
    export GOPATH=~/go >> /home/vagrant/.bash_profile
    #export GOPATH=~/Documents/go >> /home/vagrant/.bash_profile
    export PATH=$PATH:${GOPATH//://bin:}/bin >> /home/vagrant/.bash_profile

    go get -u -v github.com/nsf/gocode
    go get -u -v github.com/rogpeppe/godef
    go get -u -v golang.org/x/tools/cmd/guru
    go get -u -v golang.org/x/tools/cmd/gorename
    go get -u -v golang.org/x/tools/cmd/goimports
    go get -u -v github.com/golangci/golangci-lint/cmd/golangci-lint
    go get -u -v golang.org/x/tools/cmd/godoc
    go get -u -v github.com/zmb3/gogetdoc
    go get -u -v github.com/cweill/gotests/...
    go get -u -v github.com/haya14busa/gopkgs/cmd/gopkgs
    go get -u -v github.com/davidrjenni/reftools/cmd/fillstruct
    go get -u -v github.com/josharian/impl
    go get -u -v github.com/fatih/gomodifytags
    go get -u -v github.com/mdempsky/unconvert
    go get -u -v gopkg.in/check.v1
    go get -u -v github.com/kisielk/errcheck
    go get -u -v golang.org/x/lint/golint
    go get -u -v golang.org/x/tools/cmd/gopls

    go get -u -v github.com/godoctor/godoctor
    go install github.com/godoctor/godoctor

    #https://stackoverflow.com/questions/13792254/removing-packages-installed-with-go-get
    #go list -f {{.Target}} golang.org/x/lint/golint

    #go clean -i -n golang.org/x/lint/golint

    cd ~/
fi
