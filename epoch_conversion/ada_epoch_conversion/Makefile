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
	@gcc -c epoch_conversion.adb
	@gnatbind -x epoch_conversion.ali
	@gnatlink epoch_conversion.ali
	@del epoch_conversion.o
	@del epoch_conversion.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make epoch_conversion.adb
	@mv epoch_conversion epoch_conversion.exe
	@rm epoch_conversion.o
	@rm epoch_conversion.ali
else ifeq ($(OS),Linux)
	@gcc -c epoch_conversion.adb
	@gnatbind -x epoch_conversion.ali
	@gnatlink epoch_conversion.ali
	@mv epoch_conversion epoch_conversion.exe
	@rm epoch_conversion.o
	@rm epoch_conversion.ali
else
	@/usr/local/gcc6-aux/bin/gnat make epoch_conversion.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x epoch_conversion.ali
	@/usr/local/gcc6-aux/bin/gnatlink epoch_conversion.ali
	@mv epoch_conversion epoch_conversion.exe
	@rm epoch_conversion.o
	@rm epoch_conversion.ali
endif
clean:
	@rm epoch_conversion.exe
