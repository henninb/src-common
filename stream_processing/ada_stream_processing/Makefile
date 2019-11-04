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
	@gcc -c stream_processing.adb
	@gnatbind -x stream_processing.ali
	@gnatlink stream_processing.ali
	@del stream_processing.o
	@del stream_processing.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make stream_processing.adb
	@mv stream_processing stream_processing.exe
	@rm stream_processing.o
	@rm stream_processing.ali
else ifeq ($(OS),Linux)
	@gcc -c stream_processing.adb
	@gnatbind -x stream_processing.ali
	@gnatlink stream_processing.ali
	@mv stream_processing stream_processing.exe
	@rm stream_processing.o
	@rm stream_processing.ali
else
	@/usr/local/gcc6-aux/bin/gnat make stream_processing.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x stream_processing.ali
	@/usr/local/gcc6-aux/bin/gnatlink stream_processing.ali
	@mv stream_processing stream_processing.exe
	@rm stream_processing.o
	@rm stream_processing.ali
endif
clean:
	@rm stream_processing.exe
