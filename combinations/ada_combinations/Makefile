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
	@gcc -c combinations.adb
	@gnatbind -x combinations.ali
	@gnatlink combinations.ali
	@del combinations.o
	@del combinations.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make combinations.adb
	@mv combinations combinations.exe
	@rm combinations.o
	@rm combinations.ali
else ifeq ($(OS),Linux)
	@gcc -c combinations.adb
	@gnatbind -x combinations.ali
	@gnatlink combinations.ali
	@mv combinations combinations.exe
	@rm combinations.o
	@rm combinations.ali
else
	@/usr/local/gcc6-aux/bin/gnat make combinations.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x combinations.ali
	@/usr/local/gcc6-aux/bin/gnatlink combinations.ali
	@mv combinations combinations.exe
	@rm combinations.o
	@rm combinations.ali
endif
clean:
	@rm combinations.exe
