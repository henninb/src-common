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
	@gcc -c exception_handler.adb
	@gnatbind -x exception_handler.ali
	@gnatlink exception_handler.ali
	@del exception_handler.o
	@del exception_handler.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make exception_handler.adb
	@mv exception_handler exception_handler.exe
	@rm exception_handler.o
	@rm exception_handler.ali
else ifeq ($(OS),Linux)
	@gcc -c exception_handler.adb
	@gnatbind -x exception_handler.ali
	@gnatlink exception_handler.ali
	@mv exception_handler exception_handler.exe
	@rm exception_handler.o
	@rm exception_handler.ali
else
	@/usr/local/gcc6-aux/bin/gnat make exception_handler.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x exception_handler.ali
	@/usr/local/gcc6-aux/bin/gnatlink exception_handler.ali
	@mv exception_handler exception_handler.exe
	@rm exception_handler.o
	@rm exception_handler.ali
endif
clean:
	@rm exception_handler.exe
