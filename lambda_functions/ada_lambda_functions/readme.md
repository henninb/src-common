# freebsd install
cd /usr/ports/lang/gnat && make install && make clean

# centos install
sudo yum install gcc-gnat


# freebsd usage
adagcc

# windows
# install mingw ada compiler
gcc -c lambda_functions.adb
gnatlink
gnatbind

#gnatmake -gnato -O2 lambda_functions

# gnatmake calls these commands
gnatbind -x lambda_functions.ali
gnatlink lambda_functions.ali
