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
	@gcc -c roman.adb
	@gnatbind -x roman.ali
	@gnatlink roman.ali
	@del roman.o
	@del roman.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make roman.adb
	@mv roman roman.exe
	@rm roman.o
	@rm roman.ali
else ifeq ($(OS),Linux)
	@gcc -c roman.adb
	@gnatbind -x roman.ali
	@gnatlink roman.ali
	@mv roman roman.exe
	@rm roman.o
	@rm roman.ali
else
	@/usr/local/gcc6-aux/bin/gnat make roman.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x roman.ali
	@/usr/local/gcc6-aux/bin/gnatlink roman.ali
	@mv roman roman.exe
	@rm roman.o
	@rm roman.ali
endif
clean:
	@rm roman.exe
