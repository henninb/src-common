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
	@gcc -c date_today.adb
	@gnatbind -x date_today.ali
	@gnatlink date_today.ali
	@del date_today.o
	@del date_today.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make date_today.adb
	@mv date_today date_today.exe
	@rm date_today.o
	@rm date_today.ali
else ifeq ($(OS),Linux)
	@gcc -c date_today.adb
	@gnatbind -x date_today.ali
	@gnatlink date_today.ali
	@mv date_today date_today.exe
	@rm date_today.o
	@rm date_today.ali
else
	@/usr/local/gcc6-aux/bin/gnat make date_today.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x date_today.ali
	@/usr/local/gcc6-aux/bin/gnatlink date_today.ali
	@mv date_today date_today.exe
	@rm date_today.o
	@rm date_today.ali
endif
clean:
	@rm date_today.exe
