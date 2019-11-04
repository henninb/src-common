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
	@gcc -c linear_combination.adb
	@gnatbind -x linear_combination.ali
	@gnatlink linear_combination.ali
	@del linear_combination.o
	@del linear_combination.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make linear_combination.adb
	@mv linear_combination linear_combination.exe
	@rm linear_combination.o
	@rm linear_combination.ali
else ifeq ($(OS),Linux)
	@gcc -c linear_combination.adb
	@gnatbind -x linear_combination.ali
	@gnatlink linear_combination.ali
	@mv linear_combination linear_combination.exe
	@rm linear_combination.o
	@rm linear_combination.ali
else
	@/usr/local/gcc6-aux/bin/gnat make linear_combination.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x linear_combination.ali
	@/usr/local/gcc6-aux/bin/gnatlink linear_combination.ali
	@mv linear_combination linear_combination.exe
	@rm linear_combination.o
	@rm linear_combination.ali
endif
clean:
	@rm linear_combination.exe
