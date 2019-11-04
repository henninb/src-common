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
	@gcc -c celsius_conversion.adb
	@gnatbind -x celsius_conversion.ali
	@gnatlink celsius_conversion.ali
	@del celsius_conversion.o
	@del celsius_conversion.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make celsius_conversion.adb
	@mv celsius_conversion celsius_conversion.exe
	@rm celsius_conversion.o
	@rm celsius_conversion.ali
else ifeq ($(OS),Linux)
	@gcc -c celsius_conversion.adb
	@gnatbind -x celsius_conversion.ali
	@gnatlink celsius_conversion.ali
	@mv celsius_conversion celsius_conversion.exe
	@rm celsius_conversion.o
	@rm celsius_conversion.ali
else
	@/usr/local/gcc6-aux/bin/gnat make celsius_conversion.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x celsius_conversion.ali
	@/usr/local/gcc6-aux/bin/gnatlink celsius_conversion.ali
	@mv celsius_conversion celsius_conversion.exe
	@rm celsius_conversion.o
	@rm celsius_conversion.ali
endif
clean:
	@rm celsius_conversion.exe
