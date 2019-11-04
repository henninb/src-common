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
	@gcc -c example.adb
	@gnatbind -x example.ali
	@gnatlink example.ali
	@del example.o
	@del example.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make example.adb
	@mv example example.exe
	@rm example.o
	@rm example.ali
else ifeq ($(OS),Linux)
	@gcc -c example.adb
	@gnatbind -x example.ali
	@gnatlink example.ali
	@mv example example.exe
	@rm example.o
	@rm example.ali
else
	@/usr/local/gcc6-aux/bin/gnat make example.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x example.ali
	@/usr/local/gcc6-aux/bin/gnatlink example.ali
	@mv example example.exe
	@rm example.o
	@rm example.ali
endif
clean:
	@rm example.exe
