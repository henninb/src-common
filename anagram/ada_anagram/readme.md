# windows
# install mingw ada compiler
gcc -c anagram.adb
gnatlink
gnatbind

#gnatmake -gnato -O2 anagram

# gnatmake calls these commands
gnatbind -x anagram.ali
gnatlink anagram.ali

https://www.reddit.com/r/ada/
https://embeddedden.blogspot.com/2017/05/investigation-of-possibility-to-create.html

LLVM-based Ada compiler
The LLVM Compiler Infrastructure Project - LLVM.org
