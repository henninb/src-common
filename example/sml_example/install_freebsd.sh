#!/bin/sh

git clone git@github.com:kfl/mosml.git
cd mosml/src
gmake
RC=$?
if [ $RC -ne 0 ]; then
  exit 1
fi
sudo make install
cd ../..
rm -rf mosml

echo add -lc to the Makefile.inc
echo ldl is libdl. It is a linuxism. FreeBSD does not have a libdl. The same functionality that is in linux's libdl is provided in FreeBSD's libc. So you should be able to simply remove -ldl from CFLAGS and try compile.
exit 0
