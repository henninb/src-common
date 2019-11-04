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
	@gcc -c degrees_to_radians.adb
	@gnatbind -x degrees_to_radians.ali
	@gnatlink degrees_to_radians.ali
	@del degrees_to_radians.o
	@del degrees_to_radians.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make degrees_to_radians.adb
	@mv degrees_to_radians degrees_to_radians.exe
	@rm degrees_to_radians.o
	@rm degrees_to_radians.ali
else ifeq ($(OS),Linux)
	@gcc -c degrees_to_radians.adb
	@gnatbind -x degrees_to_radians.ali
	@gnatlink degrees_to_radians.ali
	@mv degrees_to_radians degrees_to_radians.exe
	@rm degrees_to_radians.o
	@rm degrees_to_radians.ali
else
	@/usr/local/gcc6-aux/bin/gnat make degrees_to_radians.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x degrees_to_radians.ali
	@/usr/local/gcc6-aux/bin/gnatlink degrees_to_radians.ali
	@mv degrees_to_radians degrees_to_radians.exe
	@rm degrees_to_radians.o
	@rm degrees_to_radians.ali
endif
clean:
	@rm degrees_to_radians.exe
