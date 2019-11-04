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
	@gcc -c bubble_sort.adb
	@gnatbind -x bubble_sort.ali
	@gnatlink bubble_sort.ali
	@del bubble_sort.o
	@del bubble_sort.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make bubble_sort.adb
	@mv bubble_sort bubble_sort.exe
	@rm bubble_sort.o
	@rm bubble_sort.ali
else ifeq ($(OS),Linux)
	@gcc -c bubble_sort.adb
	@gnatbind -x bubble_sort.ali
	@gnatlink bubble_sort.ali
	@mv bubble_sort bubble_sort.exe
	@rm bubble_sort.o
	@rm bubble_sort.ali
else
	@/usr/local/gcc6-aux/bin/gnat make bubble_sort.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x bubble_sort.ali
	@/usr/local/gcc6-aux/bin/gnatlink bubble_sort.ali
	@mv bubble_sort bubble_sort.exe
	@rm bubble_sort.o
	@rm bubble_sort.ali
endif
clean:
	@rm bubble_sort.exe
