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
	@gcc -c date_utc.adb
	@gnatbind -x date_utc.ali
	@gnatlink date_utc.ali
	@del date_utc.o
	@del date_utc.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make date_utc.adb
	@mv date_utc date_utc.exe
	@rm date_utc.o
	@rm date_utc.ali
else ifeq ($(OS),Linux)
	@gcc -c date_utc.adb
	@gnatbind -x date_utc.ali
	@gnatlink date_utc.ali
	@mv date_utc date_utc.exe
	@rm date_utc.o
	@rm date_utc.ali
else
	@/usr/local/gcc6-aux/bin/gnat make date_utc.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x date_utc.ali
	@/usr/local/gcc6-aux/bin/gnatlink date_utc.ali
	@mv date_utc date_utc.exe
	@rm date_utc.o
	@rm date_utc.ali
endif
clean:
	@rm date_utc.exe
