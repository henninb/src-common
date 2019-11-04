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
	@gcc -c prime.adb
	@gnatbind -x prime.ali
	@gnatlink prime.ali
	@del prime.o
	@del prime.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make prime.adb
	@mv prime prime.exe
	@rm prime.o
	@rm prime.ali
else ifeq ($(OS),Linux)
	@gcc -c prime.adb
	@gnatbind -x prime.ali
	@gnatlink prime.ali
	@mv prime prime.exe
	@rm prime.o
	@rm prime.ali
else
	@/usr/local/gcc6-aux/bin/gnat make prime.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x prime.ali
	@/usr/local/gcc6-aux/bin/gnatlink prime.ali
	@mv prime prime.exe
	@rm prime.o
	@rm prime.ali
endif
clean:
	@rm prime.exe
