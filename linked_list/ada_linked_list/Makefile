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
	@gcc -c linked_list.adb
	@gnatbind -x linked_list.ali
	@gnatlink linked_list.ali
	@del linked_list.o
	@del linked_list.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make linked_list.adb
	@mv linked_list linked_list.exe
	@rm linked_list.o
	@rm linked_list.ali
else ifeq ($(OS),Linux)
	@gcc -c linked_list.adb
	@gnatbind -x linked_list.ali
	@gnatlink linked_list.ali
	@mv linked_list linked_list.exe
	@rm linked_list.o
	@rm linked_list.ali
else
	@/usr/local/gcc6-aux/bin/gnat make linked_list.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x linked_list.ali
	@/usr/local/gcc6-aux/bin/gnatlink linked_list.ali
	@mv linked_list linked_list.exe
	@rm linked_list.o
	@rm linked_list.ali
endif
clean:
	@rm linked_list.exe
