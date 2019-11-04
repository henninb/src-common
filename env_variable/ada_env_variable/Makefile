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
	@gcc -c env_variable.adb
	@gnatbind -x env_variable.ali
	@gnatlink env_variable.ali
	@del env_variable.o
	@del env_variable.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make env_variable.adb
	@mv env_variable env_variable.exe
	@rm env_variable.o
	@rm env_variable.ali
else ifeq ($(OS),Linux)
	@gcc -c env_variable.adb
	@gnatbind -x env_variable.ali
	@gnatlink env_variable.ali
	@mv env_variable env_variable.exe
	@rm env_variable.o
	@rm env_variable.ali
else
	@/usr/local/gcc6-aux/bin/gnat make env_variable.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x env_variable.ali
	@/usr/local/gcc6-aux/bin/gnatlink env_variable.ali
	@mv env_variable env_variable.exe
	@rm env_variable.o
	@rm env_variable.ali
endif
clean:
	@rm env_variable.exe
