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
	@gcc -c euler_phi.adb
	@gnatbind -x euler_phi.ali
	@gnatlink euler_phi.ali
	@del euler_phi.o
	@del euler_phi.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make euler_phi.adb
	@mv euler_phi euler_phi.exe
	@rm euler_phi.o
	@rm euler_phi.ali
else ifeq ($(OS),Linux)
	@gcc -c euler_phi.adb
	@gnatbind -x euler_phi.ali
	@gnatlink euler_phi.ali
	@mv euler_phi euler_phi.exe
	@rm euler_phi.o
	@rm euler_phi.ali
else
	@/usr/local/gcc6-aux/bin/gnat make euler_phi.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x euler_phi.ali
	@/usr/local/gcc6-aux/bin/gnatlink euler_phi.ali
	@mv euler_phi euler_phi.exe
	@rm euler_phi.o
	@rm euler_phi.ali
endif
clean:
	@rm euler_phi.exe
