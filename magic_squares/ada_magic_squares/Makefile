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
	@gcc -c magic_squares.adb
	@gnatbind -x magic_squares.ali
	@gnatlink magic_squares.ali
	@del magic_squares.o
	@del magic_squares.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make magic_squares.adb
	@mv magic_squares magic_squares.exe
	@rm magic_squares.o
	@rm magic_squares.ali
else ifeq ($(OS),Linux)
	@gcc -c magic_squares.adb
	@gnatbind -x magic_squares.ali
	@gnatlink magic_squares.ali
	@mv magic_squares magic_squares.exe
	@rm magic_squares.o
	@rm magic_squares.ali
else
	@/usr/local/gcc6-aux/bin/gnat make magic_squares.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x magic_squares.ali
	@/usr/local/gcc6-aux/bin/gnatlink magic_squares.ali
	@mv magic_squares magic_squares.exe
	@rm magic_squares.o
	@rm magic_squares.ali
endif
clean:
	@rm magic_squares.exe
