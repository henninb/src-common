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
	@gcc -c leap_year.adb
	@gnatbind -x leap_year.ali
	@gnatlink leap_year.ali
	@del leap_year.o
	@del leap_year.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make leap_year.adb
	@mv leap_year leap_year.exe
	@rm leap_year.o
	@rm leap_year.ali
else ifeq ($(OS),Linux)
	@gcc -c leap_year.adb
	@gnatbind -x leap_year.ali
	@gnatlink leap_year.ali
	@mv leap_year leap_year.exe
	@rm leap_year.o
	@rm leap_year.ali
else
	@/usr/local/gcc6-aux/bin/gnat make leap_year.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x leap_year.ali
	@/usr/local/gcc6-aux/bin/gnatlink leap_year.ali
	@mv leap_year leap_year.exe
	@rm leap_year.o
	@rm leap_year.ali
endif
clean:
	@rm leap_year.exe
