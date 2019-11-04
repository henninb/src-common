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
	@gcc -c quadratic.adb
	@gnatbind -x quadratic.ali
	@gnatlink quadratic.ali
	@del quadratic.o
	@del quadratic.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make quadratic.adb
	@mv quadratic quadratic.exe
	@rm quadratic.o
	@rm quadratic.ali
else ifeq ($(OS),Linux)
	@gcc -c quadratic.adb
	@gnatbind -x quadratic.ali
	@gnatlink quadratic.ali
	@mv quadratic quadratic.exe
	@rm quadratic.o
	@rm quadratic.ali
else
	@/usr/local/gcc6-aux/bin/gnat make quadratic.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x quadratic.ali
	@/usr/local/gcc6-aux/bin/gnatlink quadratic.ali
	@mv quadratic quadratic.exe
	@rm quadratic.o
	@rm quadratic.ali
endif
clean:
	@rm quadratic.exe
