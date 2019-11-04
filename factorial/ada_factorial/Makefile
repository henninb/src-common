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
	@gcc -c factorial.adb
	@gnatbind -x factorial.ali
	@gnatlink factorial.ali
	@del factorial.o
	@del factorial.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make factorial.adb
	@mv factorial factorial.exe
	@rm factorial.o
	@rm factorial.ali
else ifeq ($(OS),Linux)
	@gcc -c factorial.adb
	@gnatbind -x factorial.ali
	@gnatlink factorial.ali
	@mv factorial factorial.exe
	@rm factorial.o
	@rm factorial.ali
else
	@/usr/local/gcc6-aux/bin/gnat make factorial.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x factorial.ali
	@/usr/local/gcc6-aux/bin/gnatlink factorial.ali
	@mv factorial factorial.exe
	@rm factorial.o
	@rm factorial.ali
endif
clean:
	@rm factorial.exe
