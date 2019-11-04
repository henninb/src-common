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
	@gcc -c nqueens.adb
	@gnatbind -x nqueens.ali
	@gnatlink nqueens.ali
	@del nqueens.o
	@del nqueens.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make nqueens.adb
	@mv nqueens nqueens.exe
	@rm nqueens.o
	@rm nqueens.ali
else ifeq ($(OS),Linux)
	@gcc -c nqueens.adb
	@gnatbind -x nqueens.ali
	@gnatlink nqueens.ali
	@mv nqueens nqueens.exe
	@rm nqueens.o
	@rm nqueens.ali
else
	@/usr/local/gcc6-aux/bin/gnat make nqueens.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x nqueens.ali
	@/usr/local/gcc6-aux/bin/gnatlink nqueens.ali
	@mv nqueens nqueens.exe
	@rm nqueens.o
	@rm nqueens.ali
endif
clean:
	@rm nqueens.exe
