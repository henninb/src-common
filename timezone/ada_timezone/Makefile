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
	@gcc -c timezone.adb
	@gnatbind -x timezone.ali
	@gnatlink timezone.ali
	@del timezone.o
	@del timezone.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make timezone.adb
	@mv timezone timezone.exe
	@rm timezone.o
	@rm timezone.ali
else ifeq ($(OS),Linux)
	@gcc -c timezone.adb
	@gnatbind -x timezone.ali
	@gnatlink timezone.ali
	@mv timezone timezone.exe
	@rm timezone.o
	@rm timezone.ali
else
	@/usr/local/gcc6-aux/bin/gnat make timezone.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x timezone.ali
	@/usr/local/gcc6-aux/bin/gnatlink timezone.ali
	@mv timezone timezone.exe
	@rm timezone.o
	@rm timezone.ali
endif
clean:
	@rm timezone.exe
