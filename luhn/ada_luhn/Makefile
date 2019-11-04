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
	@gcc -c luhn.adb
	@gnatbind -x luhn.ali
	@gnatlink luhn.ali
	@del luhn.o
	@del luhn.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make luhn.adb
	@mv luhn luhn.exe
	@rm luhn.o
	@rm luhn.ali
else ifeq ($(OS),Linux)
	@gcc -c luhn.adb
	@gnatbind -x luhn.ali
	@gnatlink luhn.ali
	@mv luhn luhn.exe
	@rm luhn.o
	@rm luhn.ali
else
	@/usr/local/gcc6-aux/bin/gnat make luhn.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x luhn.ali
	@/usr/local/gcc6-aux/bin/gnatlink luhn.ali
	@mv luhn luhn.exe
	@rm luhn.o
	@rm luhn.ali
endif
clean:
	@rm luhn.exe
