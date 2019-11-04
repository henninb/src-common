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
	@gcc -c date_dow.adb
	@gnatbind -x date_dow.ali
	@gnatlink date_dow.ali
	@del date_dow.o
	@del date_dow.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make date_dow.adb
	@mv date_dow date_dow.exe
	@rm date_dow.o
	@rm date_dow.ali
else ifeq ($(OS),Linux)
	@gcc -c date_dow.adb
	@gnatbind -x date_dow.ali
	@gnatlink date_dow.ali
	@mv date_dow date_dow.exe
	@rm date_dow.o
	@rm date_dow.ali
else
	@/usr/local/gcc6-aux/bin/gnat make date_dow.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x date_dow.ali
	@/usr/local/gcc6-aux/bin/gnatlink date_dow.ali
	@mv date_dow date_dow.exe
	@rm date_dow.o
	@rm date_dow.ali
endif
clean:
	@rm date_dow.exe
