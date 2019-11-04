#!/bin/sh

sudo zypper install -y gmp-devel
git clone git@github.com:kfl/mosml.git
cd mosml/src
make
sudo make install
cd ../..
rm -rf mosml

exit 0
