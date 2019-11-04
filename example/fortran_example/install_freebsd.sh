#!/bin/sh

echo "libgcc_s.so.1 gcc48/libgcc_s.so.1" >> /etc/libmap.conf

sudo pkg install gcc48

exit 0
