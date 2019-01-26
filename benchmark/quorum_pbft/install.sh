#!/bin/bash
# installing quorum
sudo rm -rf ~/download /usr/local/go
mkdir ~/download

cd ~/download
wget https://storage.googleapis.com/golang/go1.9.3.linux-amd64.tar.gz
tar -zxvf go1.9.3.linux-amd64.tar.gz
sudo mv go /usr/local
export GOPATH=/usr/local/go
export PATH=$PATH:/usr/local/go/bin

git clone https://github.com/jpmorganchase/quorum.git
cd quorum
make all
