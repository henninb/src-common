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
	@gcc -c fibonacci.adb
	@gnatbind -x fibonacci.ali
	@gnatlink fibonacci.ali
	@del fibonacci.o
	@del fibonacci.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make fibonacci.adb
	@mv fibonacci fibonacci.exe
	@rm fibonacci.o
	@rm fibonacci.ali
else ifeq ($(OS),Linux)
	@gcc -c fibonacci.adb
	@gnatbind -x fibonacci.ali
	@gnatlink fibonacci.ali
	@mv fibonacci fibonacci.exe
	@rm fibonacci.o
	@rm fibonacci.ali
else
	@/usr/local/gcc6-aux/bin/gnat make fibonacci.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x fibonacci.ali
	@/usr/local/gcc6-aux/bin/gnatlink fibonacci.ali
	@mv fibonacci fibonacci.exe
	@rm fibonacci.o
	@rm fibonacci.ali
endif
clean:
	@rm fibonacci.exe
