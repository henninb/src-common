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
	@gcc -c hanoi.adb
	@gnatbind -x hanoi.ali
	@gnatlink hanoi.ali
	@del hanoi.o
	@del hanoi.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make hanoi.adb
	@mv hanoi hanoi.exe
	@rm hanoi.o
	@rm hanoi.ali
else ifeq ($(OS),Linux)
	@gcc -c hanoi.adb
	@gnatbind -x hanoi.ali
	@gnatlink hanoi.ali
	@mv hanoi hanoi.exe
	@rm hanoi.o
	@rm hanoi.ali
else
	@/usr/local/gcc6-aux/bin/gnat make hanoi.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x hanoi.ali
	@/usr/local/gcc6-aux/bin/gnatlink hanoi.ali
	@mv hanoi hanoi.exe
	@rm hanoi.o
	@rm hanoi.ali
endif
clean:
	@rm hanoi.exe
