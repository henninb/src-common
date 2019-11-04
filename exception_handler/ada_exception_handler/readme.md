# windows
# install mingw ada compiler
gcc -c exception_handler.adb
gnatlink
gnatbind

#gnatmake -gnato -O2 exception_handler

# gnatmake calls these commands
gnatbind -x exception_handler.ali
gnatlink exception_handler.ali

https://www.reddit.com/r/ada/
https://embeddedden.blogspot.com/2017/05/investigation-of-possibility-to-create.html

LLVM-based Ada compiler
The LLVM Compiler Infrastructure Project - LLVM.org
