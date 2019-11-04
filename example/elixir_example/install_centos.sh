#!/bin/sh

sudo yum install -y wget git
#wget http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
#sudo rpm -ivh epel-release-latest-7.noarch.rpm
#rm epel-release-latest-7.noarch.rpm
#sudo yum install -y elixir
git clone https://github.com/elixir-lang/elixir
cd elixir
make
sudo make install
cd ..
rm -rf elixir

exit 0
