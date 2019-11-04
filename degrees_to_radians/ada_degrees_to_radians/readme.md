# freebsd install
cd /usr/ports/lang/gnat && make install && make clean

# centos install
sudo yum install gcc-gnat


# freebsd usage
adagcc

# windows
# install mingw ada compiler
gcc -c degrees_to_radians.adb
gnatlink
gnatbind

#gnatmake -gnato -O2 degrees_to_radians

# gnatmake calls these commands
gnatbind -x degrees_to_radians.ali
gnatlink degrees_to_radians.ali
