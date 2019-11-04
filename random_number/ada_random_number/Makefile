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
	@gcc -c random_number.adb
	@gnatbind -x random_number.ali
	@gnatlink random_number.ali
	@del random_number.o
	@del random_number.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make random_number.adb
	@mv random_number random_number.exe
	@rm random_number.o
	@rm random_number.ali
else ifeq ($(OS),Linux)
	@gcc -c random_number.adb
	@gnatbind -x random_number.ali
	@gnatlink random_number.ali
	@mv random_number random_number.exe
	@rm random_number.o
	@rm random_number.ali
else
	@/usr/local/gcc6-aux/bin/gnat make random_number.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x random_number.ali
	@/usr/local/gcc6-aux/bin/gnatlink random_number.ali
	@mv random_number random_number.exe
	@rm random_number.o
	@rm random_number.ali
endif
clean:
	@rm random_number.exe
