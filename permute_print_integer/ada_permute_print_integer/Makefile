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
	@gcc -c permute_print_integer.adb
	@gnatbind -x permute_print_integer.ali
	@gnatlink permute_print_integer.ali
	@del permute_print_integer.o
	@del permute_print_integer.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make permute_print_integer.adb
	@mv permute_print_integer permute_print_integer.exe
	@rm permute_print_integer.o
	@rm permute_print_integer.ali
else ifeq ($(OS),Linux)
	@gcc -c permute_print_integer.adb
	@gnatbind -x permute_print_integer.ali
	@gnatlink permute_print_integer.ali
	@mv permute_print_integer permute_print_integer.exe
	@rm permute_print_integer.o
	@rm permute_print_integer.ali
else
	@/usr/local/gcc6-aux/bin/gnat make permute_print_integer.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x permute_print_integer.ali
	@/usr/local/gcc6-aux/bin/gnatlink permute_print_integer.ali
	@mv permute_print_integer permute_print_integer.exe
	@rm permute_print_integer.o
	@rm permute_print_integer.ali
endif
clean:
	@rm permute_print_integer.exe
