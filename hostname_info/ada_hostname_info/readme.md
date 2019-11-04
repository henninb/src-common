# windows
# install mingw ada compiler
gcc -c hostname_info.adb
gnatlink
gnatbind

#gnatmake -gnato -O2 hostname_info

# gnatmake calls these commands
gnatbind -x hostname_info.ali
gnatlink hostname_info.ali

https://www.reddit.com/r/ada/
https://embeddedden.blogspot.com/2017/05/investigation-of-possibility-to-create.html

LLVM-based Ada compiler
The LLVM Compiler Infrastructure Project - LLVM.org
