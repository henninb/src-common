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
	@gcc -c gcd.adb
	@gnatbind -x gcd.ali
	@gnatlink gcd.ali
	@del gcd.o
	@del gcd.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make gcd.adb
	@mv gcd gcd.exe
	@rm gcd.o
	@rm gcd.ali
else ifeq ($(OS),Linux)
	@gcc -c gcd.adb
	@gnatbind -x gcd.ali
	@gnatlink gcd.ali
	@mv gcd gcd.exe
	@rm gcd.o
	@rm gcd.ali
else
	@/usr/local/gcc6-aux/bin/gnat make gcd.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x gcd.ali
	@/usr/local/gcc6-aux/bin/gnatlink gcd.ali
	@mv gcd gcd.exe
	@rm gcd.o
	@rm gcd.ali
endif
clean:
	@rm gcd.exe
