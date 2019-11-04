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
	@gcc -c entry_point.adb
	@gnatbind -x entry_point.ali
	@gnatlink entry_point.ali
	@del entry_point.o
	@del entry_point.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make entry_point.adb
	@mv entry_point entry_point.exe
	@rm entry_point.o
	@rm entry_point.ali
else ifeq ($(OS),Linux)
	@gcc -c entry_point.adb
	@gnatbind -x entry_point.ali
	@gnatlink entry_point.ali
	@mv entry_point entry_point.exe
	@rm entry_point.o
	@rm entry_point.ali
else
	@/usr/local/gcc6-aux/bin/gnat make entry_point.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x entry_point.ali
	@/usr/local/gcc6-aux/bin/gnatlink entry_point.ali
	@mv entry_point entry_point.exe
	@rm entry_point.o
	@rm entry_point.ali
endif
clean:
	@rm entry_point.exe
