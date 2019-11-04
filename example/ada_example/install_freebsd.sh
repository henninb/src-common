#!/bin/sh

# freebsd install
#echo cd /usr/ports/lang/gnat && make install && make clean

# freebsd usage
#echo adagcc
#sudo pkg install gps-ide
#sudo pkg install gcc6-aux-20170202_2

sudo pkg install gmake
sudo pkg install gcc6-aux
#export PATH=/usr/local/gcc6-aux/bin:$PATH
echo "/usr/local/gcc6-aux/bin is not added to the path"
echo "use gmake and not vanilla (BSD) make for building"

exit 0
