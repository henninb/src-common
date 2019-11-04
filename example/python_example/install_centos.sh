#!/bin/sh

sudo yum install -y python36 pylint
#sudo yum install -y python pylint

update-alternatives --list | grep python

sudo update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.6 2

echo manually select the version
echo sudo update-alternatives --config python

exit 0
