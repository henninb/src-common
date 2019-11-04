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
	@gcc -c datatypes.adb
	@gnatbind -x datatypes.ali
	@gnatlink datatypes.ali
	@del datatypes.o
	@del datatypes.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make datatypes.adb
	@mv datatypes datatypes.exe
	@rm datatypes.o
	@rm datatypes.ali
else ifeq ($(OS),Linux)
	@gcc -c datatypes.adb
	@gnatbind -x datatypes.ali
	@gnatlink datatypes.ali
	@mv datatypes datatypes.exe
	@rm datatypes.o
	@rm datatypes.ali
else
	@/usr/local/gcc6-aux/bin/gnat make datatypes.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x datatypes.ali
	@/usr/local/gcc6-aux/bin/gnatlink datatypes.ali
	@mv datatypes datatypes.exe
	@rm datatypes.o
	@rm datatypes.ali
endif
clean:
	@rm datatypes.exe
