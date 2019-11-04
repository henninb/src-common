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
	@gcc -c hostname_info.adb
	@gnatbind -x hostname_info.ali
	@gnatlink hostname_info.ali
	@del hostname_info.o
	@del hostname_info.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make hostname_info.adb
	@mv hostname_info hostname_info.exe
	@rm hostname_info.o
	@rm hostname_info.ali
else ifeq ($(OS),Linux)
	@gcc -c hostname_info.adb
	@gnatbind -x hostname_info.ali
	@gnatlink hostname_info.ali
	@mv hostname_info hostname_info.exe
	@rm hostname_info.o
	@rm hostname_info.ali
else
	@/usr/local/gcc6-aux/bin/gnat make hostname_info.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x hostname_info.ali
	@/usr/local/gcc6-aux/bin/gnatlink hostname_info.ali
	@mv hostname_info hostname_info.exe
	@rm hostname_info.o
	@rm hostname_info.ali
endif
clean:
	@rm hostname_info.exe
