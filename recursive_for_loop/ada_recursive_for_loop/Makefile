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
	@gcc -c recursive_for_loop.adb
	@gnatbind -x recursive_for_loop.ali
	@gnatlink recursive_for_loop.ali
	@del recursive_for_loop.o
	@del recursive_for_loop.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make recursive_for_loop.adb
	@mv recursive_for_loop recursive_for_loop.exe
	@rm recursive_for_loop.o
	@rm recursive_for_loop.ali
else ifeq ($(OS),Linux)
	@gcc -c recursive_for_loop.adb
	@gnatbind -x recursive_for_loop.ali
	@gnatlink recursive_for_loop.ali
	@mv recursive_for_loop recursive_for_loop.exe
	@rm recursive_for_loop.o
	@rm recursive_for_loop.ali
else
	@/usr/local/gcc6-aux/bin/gnat make recursive_for_loop.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x recursive_for_loop.ali
	@/usr/local/gcc6-aux/bin/gnatlink recursive_for_loop.ali
	@mv recursive_for_loop recursive_for_loop.exe
	@rm recursive_for_loop.o
	@rm recursive_for_loop.ali
endif
clean:
	@rm recursive_for_loop.exe
