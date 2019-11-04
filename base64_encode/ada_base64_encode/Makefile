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
	@gcc -c base64_encode.adb
	@gnatbind -x base64_encode.ali
	@gnatlink base64_encode.ali
	@del base64_encode.o
	@del base64_encode.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make base64_encode.adb
	@mv base64_encode base64_encode.exe
	@rm base64_encode.o
	@rm base64_encode.ali
else ifeq ($(OS),Linux)
	@gcc -c base64_encode.adb
	@gnatbind -x base64_encode.ali
	@gnatlink base64_encode.ali
	@mv base64_encode base64_encode.exe
	@rm base64_encode.o
	@rm base64_encode.ali
else
	@/usr/local/gcc6-aux/bin/gnat make base64_encode.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x base64_encode.ali
	@/usr/local/gcc6-aux/bin/gnatlink base64_encode.ali
	@mv base64_encode base64_encode.exe
	@rm base64_encode.o
	@rm base64_encode.ali
endif
clean:
	@rm base64_encode.exe
