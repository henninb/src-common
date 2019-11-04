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
	@gcc -c postgresql_connect.adb
	@gnatbind -x postgresql_connect.ali
	@gnatlink postgresql_connect.ali
	@del postgresql_connect.o
	@del postgresql_connect.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make postgresql_connect.adb
	@mv postgresql_connect postgresql_connect.exe
	@rm postgresql_connect.o
	@rm postgresql_connect.ali
else ifeq ($(OS),Linux)
	@gcc -c postgresql_connect.adb
	@gnatbind -x postgresql_connect.ali
	@gnatlink postgresql_connect.ali
	@mv postgresql_connect postgresql_connect.exe
	@rm postgresql_connect.o
	@rm postgresql_connect.ali
else
	@/usr/local/gcc6-aux/bin/gnat make postgresql_connect.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x postgresql_connect.ali
	@/usr/local/gcc6-aux/bin/gnatlink postgresql_connect.ali
	@mv postgresql_connect postgresql_connect.exe
	@rm postgresql_connect.o
	@rm postgresql_connect.ali
endif
clean:
	@rm postgresql_connect.exe
