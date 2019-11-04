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
	@gcc -c easter_calculator.adb
	@gnatbind -x easter_calculator.ali
	@gnatlink easter_calculator.ali
	@del easter_calculator.o
	@del easter_calculator.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make easter_calculator.adb
	@mv easter_calculator easter_calculator.exe
	@rm easter_calculator.o
	@rm easter_calculator.ali
else ifeq ($(OS),Linux)
	@gcc -c easter_calculator.adb
	@gnatbind -x easter_calculator.ali
	@gnatlink easter_calculator.ali
	@mv easter_calculator easter_calculator.exe
	@rm easter_calculator.o
	@rm easter_calculator.ali
else
	@/usr/local/gcc6-aux/bin/gnat make easter_calculator.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x easter_calculator.ali
	@/usr/local/gcc6-aux/bin/gnatlink easter_calculator.ali
	@mv easter_calculator easter_calculator.exe
	@rm easter_calculator.o
	@rm easter_calculator.ali
endif
clean:
	@rm easter_calculator.exe
