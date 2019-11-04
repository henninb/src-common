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
	@gcc -c sidereal_time.adb
	@gnatbind -x sidereal_time.ali
	@gnatlink sidereal_time.ali
	@del sidereal_time.o
	@del sidereal_time.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make sidereal_time.adb
	@mv sidereal_time sidereal_time.exe
	@rm sidereal_time.o
	@rm sidereal_time.ali
else ifeq ($(OS),Linux)
	@gcc -c sidereal_time.adb
	@gnatbind -x sidereal_time.ali
	@gnatlink sidereal_time.ali
	@mv sidereal_time sidereal_time.exe
	@rm sidereal_time.o
	@rm sidereal_time.ali
else
	@/usr/local/gcc6-aux/bin/gnat make sidereal_time.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x sidereal_time.ali
	@/usr/local/gcc6-aux/bin/gnatlink sidereal_time.ali
	@mv sidereal_time sidereal_time.exe
	@rm sidereal_time.o
	@rm sidereal_time.ali
endif
clean:
	@rm sidereal_time.exe
