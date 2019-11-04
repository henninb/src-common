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
	@gcc -c sleep.adb
	@gnatbind -x sleep.ali
	@gnatlink sleep.ali
	@del sleep.o
	@del sleep.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make sleep.adb
	@mv sleep sleep.exe
	@rm sleep.o
	@rm sleep.ali
else ifeq ($(OS),Linux)
	@gcc -c sleep.adb
	@gnatbind -x sleep.ali
	@gnatlink sleep.ali
	@mv sleep sleep.exe
	@rm sleep.o
	@rm sleep.ali
else
	@/usr/local/gcc6-aux/bin/gnat make sleep.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x sleep.ali
	@/usr/local/gcc6-aux/bin/gnatlink sleep.ali
	@mv sleep sleep.exe
	@rm sleep.o
	@rm sleep.ali
endif
clean:
	@rm sleep.exe
