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
	@gcc -c lambda_functions.adb
	@gnatbind -x lambda_functions.ali
	@gnatlink lambda_functions.ali
	@del lambda_functions.o
	@del lambda_functions.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make lambda_functions.adb
	@mv lambda_functions lambda_functions.exe
	@rm lambda_functions.o
	@rm lambda_functions.ali
else ifeq ($(OS),Linux)
	@gcc -c lambda_functions.adb
	@gnatbind -x lambda_functions.ali
	@gnatlink lambda_functions.ali
	@mv lambda_functions lambda_functions.exe
	@rm lambda_functions.o
	@rm lambda_functions.ali
else
	@/usr/local/gcc6-aux/bin/gnat make lambda_functions.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x lambda_functions.ali
	@/usr/local/gcc6-aux/bin/gnatlink lambda_functions.ali
	@mv lambda_functions lambda_functions.exe
	@rm lambda_functions.o
	@rm lambda_functions.ali
endif
clean:
	@rm lambda_functions.exe
