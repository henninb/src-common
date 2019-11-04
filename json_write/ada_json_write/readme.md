# freebsd install
cd /usr/ports/lang/gnat && make install && make clean

# centos install
sudo yum install gcc-gnat


# freebsd usage
adagcc

# windows
# install mingw ada compiler
gcc -c json_write.adb
gnatlink
gnatbind

#gnatmake -gnato -O2 json_write

# gnatmake calls these commands
gnatbind -x json_write.ali
gnatlink json_write.ali
