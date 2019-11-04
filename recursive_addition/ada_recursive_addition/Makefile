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
	@gcc -c recursive_addition.adb
	@gnatbind -x recursive_addition.ali
	@gnatlink recursive_addition.ali
	@del recursive_addition.o
	@del recursive_addition.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make recursive_addition.adb
	@mv recursive_addition recursive_addition.exe
	@rm recursive_addition.o
	@rm recursive_addition.ali
else ifeq ($(OS),Linux)
	@gcc -c recursive_addition.adb
	@gnatbind -x recursive_addition.ali
	@gnatlink recursive_addition.ali
	@mv recursive_addition recursive_addition.exe
	@rm recursive_addition.o
	@rm recursive_addition.ali
else
	@/usr/local/gcc6-aux/bin/gnat make recursive_addition.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x recursive_addition.ali
	@/usr/local/gcc6-aux/bin/gnatlink recursive_addition.ali
	@mv recursive_addition recursive_addition.exe
	@rm recursive_addition.o
	@rm recursive_addition.ali
endif
clean:
	@rm recursive_addition.exe
