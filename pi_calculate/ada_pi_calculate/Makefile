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
	@gcc -c pi_calculate.adb
	@gnatbind -x pi_calculate.ali
	@gnatlink pi_calculate.ali
	@del pi_calculate.o
	@del pi_calculate.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make pi_calculate.adb
	@mv pi_calculate pi_calculate.exe
	@rm pi_calculate.o
	@rm pi_calculate.ali
else ifeq ($(OS),Linux)
	@gcc -c pi_calculate.adb
	@gnatbind -x pi_calculate.ali
	@gnatlink pi_calculate.ali
	@mv pi_calculate pi_calculate.exe
	@rm pi_calculate.o
	@rm pi_calculate.ali
else
	@/usr/local/gcc6-aux/bin/gnat make pi_calculate.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x pi_calculate.ali
	@/usr/local/gcc6-aux/bin/gnatlink pi_calculate.ali
	@mv pi_calculate pi_calculate.exe
	@rm pi_calculate.o
	@rm pi_calculate.ali
endif
clean:
	@rm pi_calculate.exe
