ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
  ifeq ($(OS),Linux)
    ifneq ($(wildcard /etc/lsb-release),)
      DISTRO := $(shell lsb_release -si)
    endif
  endif
endif

all: unix
Windows_NT:
	@gcc -c anagram.adb
	@gnatbind -x anagram.ali
	@gnatlink anagram.ali
	@del anagram.o
	@del anagram.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make anagram.adb
	@mv anagram anagram.exe
	@rm anagram.o
	@rm anagram.ali
else ifeq ($(OS),Linux)
	@gcc -c anagram.adb
	@gnatbind -x anagram.ali
	@gnatlink anagram.ali
	@mv anagram anagram.exe
	@rm anagram.o
	@rm anagram.ali
else
	@/usr/local/gcc6-aux/bin/gnat make anagram.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x anagram.ali
	@/usr/local/gcc6-aux/bin/gnatlink anagram.ali
	@mv anagram anagram.exe
	@rm anagram.o
	@rm anagram.ali
endif
clean:
	@rm anagram.exe
