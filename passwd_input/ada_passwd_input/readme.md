# windows
# install mingw ada compiler
gcc -c passwd_input.adb
gnatlink
gnatbind

#gnatmake -gnato -O2 passwd_input

# gnatmake calls these commands
gnatbind -x passwd_input.ali
gnatlink passwd_input.ali

https://www.reddit.com/r/ada/
https://embeddedden.blogspot.com/2017/05/investigation-of-possibility-to-create.html

LLVM-based Ada compiler
The LLVM Compiler Infrastructure Project - LLVM.org
