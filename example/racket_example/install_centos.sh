#!/bin/sh

sudo yum install -y wget
wget https://mirror.racket-lang.org/installers/6.11/racket-6.11-x86_64-linux.sh
sudo sh racket-6.11-x86_64-linux.sh

exit 0
