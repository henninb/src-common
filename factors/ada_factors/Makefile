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
	@gcc -c factors.adb
	@gnatbind -x factors.ali
	@gnatlink factors.ali
	@del factors.o
	@del factors.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make factors.adb
	@mv factors factors.exe
	@rm factors.o
	@rm factors.ali
else ifeq ($(OS),Linux)
	@gcc -c factors.adb
	@gnatbind -x factors.ali
	@gnatlink factors.ali
	@mv factors factors.exe
	@rm factors.o
	@rm factors.ali
else
	@/usr/local/gcc6-aux/bin/gnat make factors.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x factors.ali
	@/usr/local/gcc6-aux/bin/gnatlink factors.ali
	@mv factors factors.exe
	@rm factors.o
	@rm factors.ali
endif
clean:
	@rm factors.exe
