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
	@gcc -c passwd_input.adb
	@gnatbind -x passwd_input.ali
	@gnatlink passwd_input.ali
	@del passwd_input.o
	@del passwd_input.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make passwd_input.adb
	@mv passwd_input passwd_input.exe
	@rm passwd_input.o
	@rm passwd_input.ali
else ifeq ($(OS),Linux)
	@gcc -c passwd_input.adb
	@gnatbind -x passwd_input.ali
	@gnatlink passwd_input.ali
	@mv passwd_input passwd_input.exe
	@rm passwd_input.o
	@rm passwd_input.ali
else
	@/usr/local/gcc6-aux/bin/gnat make passwd_input.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x passwd_input.ali
	@/usr/local/gcc6-aux/bin/gnatlink passwd_input.ali
	@mv passwd_input passwd_input.exe
	@rm passwd_input.o
	@rm passwd_input.ali
endif
clean:
	@rm passwd_input.exe
