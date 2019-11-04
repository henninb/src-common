#!/bin/sh

sudo yum install -y m4 emacs
wget http://ftp.gnu.org/gnu/gforth/gforth-0.7.3.tar.gz
rm -rf gforth-0.7.3
tar xvf gforth-0.7.3.tar.gz
cd gforth-0.7.3
./configure
make
sudo make install
cd ..
rm -rf gforth-0.7.3

exit 0
