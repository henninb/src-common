# windows
# install mingw ada compiler
gcc -c postgresql_connect.adb
gnatlink
gnatbind

#gnatmake -gnato -O2 postgresql_connect

# gnatmake calls these commands
gnatbind -x postgresql_connect.ali
gnatlink postgresql_connect.ali

https://www.reddit.com/r/ada/
https://embeddedden.blogspot.com/2017/05/investigation-of-possibility-to-create.html

LLVM-based Ada compiler
The LLVM Compiler Infrastructure Project - LLVM.org
