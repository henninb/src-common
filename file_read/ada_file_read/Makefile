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
	@gcc -c file_read.adb
	@gnatbind -x file_read.ali
	@gnatlink file_read.ali
	@del file_read.o
	@del file_read.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make file_read.adb
	@mv file_read file_read.exe
	@rm file_read.o
	@rm file_read.ali
else ifeq ($(OS),Linux)
	@gcc -c file_read.adb
	@gnatbind -x file_read.ali
	@gnatlink file_read.ali
	@mv file_read file_read.exe
	@rm file_read.o
	@rm file_read.ali
else
	@/usr/local/gcc6-aux/bin/gnat make file_read.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x file_read.ali
	@/usr/local/gcc6-aux/bin/gnatlink file_read.ali
	@mv file_read file_read.exe
	@rm file_read.o
	@rm file_read.ali
endif
clean:
	@rm file_read.exe
