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
	@gcc -c selection_sort.adb
	@gnatbind -x selection_sort.ali
	@gnatlink selection_sort.ali
	@del selection_sort.o
	@del selection_sort.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make selection_sort.adb
	@mv selection_sort selection_sort.exe
	@rm selection_sort.o
	@rm selection_sort.ali
else ifeq ($(OS),Linux)
	@gcc -c selection_sort.adb
	@gnatbind -x selection_sort.ali
	@gnatlink selection_sort.ali
	@mv selection_sort selection_sort.exe
	@rm selection_sort.o
	@rm selection_sort.ali
else
	@/usr/local/gcc6-aux/bin/gnat make selection_sort.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x selection_sort.ali
	@/usr/local/gcc6-aux/bin/gnatlink selection_sort.ali
	@mv selection_sort selection_sort.exe
	@rm selection_sort.o
	@rm selection_sort.ali
endif
clean:
	@rm selection_sort.exe
