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
	@gcc -c julian_date.adb
	@gnatbind -x julian_date.ali
	@gnatlink julian_date.ali
	@del julian_date.o
	@del julian_date.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make julian_date.adb
	@mv julian_date julian_date.exe
	@rm julian_date.o
	@rm julian_date.ali
else ifeq ($(OS),Linux)
	@gcc -c julian_date.adb
	@gnatbind -x julian_date.ali
	@gnatlink julian_date.ali
	@mv julian_date julian_date.exe
	@rm julian_date.o
	@rm julian_date.ali
else
	@/usr/local/gcc6-aux/bin/gnat make julian_date.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x julian_date.ali
	@/usr/local/gcc6-aux/bin/gnatlink julian_date.ali
	@mv julian_date julian_date.exe
	@rm julian_date.o
	@rm julian_date.ali
endif
clean:
	@rm julian_date.exe
