#!/bin/sh

#echo Racket is not scheme
#wget https://mirror.racket-lang.org/installers/6.11/racket-6.11-x86_64-linux.sh
sudo yum install -y gambit-c
sudo yum install -y guile
sudo yum install -y ncurses-devel
sudo yum install -y libXt-devel

wget https://github.com/cisco/ChezScheme/archive/v9.4.tar.gz

exit 0
