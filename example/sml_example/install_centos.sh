#!/bin/sh

sudo yum install -y gmp-devel git
git clone git@github.com:kfl/mosml.git
cd mosml/src
make
sudo make install
cd ../..
rm -rf mosml
echo git clone git@github.com:MLton/mlton.git

exit 0
