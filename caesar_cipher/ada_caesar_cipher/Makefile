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
	@gcc -c caesar_cipher.adb
	@gnatbind -x caesar_cipher.ali
	@gnatlink caesar_cipher.ali
	@del caesar_cipher.o
	@del caesar_cipher.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make caesar_cipher.adb
	@mv caesar_cipher caesar_cipher.exe
	@rm caesar_cipher.o
	@rm caesar_cipher.ali
else ifeq ($(OS),Linux)
	@gcc -c caesar_cipher.adb
	@gnatbind -x caesar_cipher.ali
	@gnatlink caesar_cipher.ali
	@mv caesar_cipher caesar_cipher.exe
	@rm caesar_cipher.o
	@rm caesar_cipher.ali
else
	@/usr/local/gcc6-aux/bin/gnat make caesar_cipher.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x caesar_cipher.ali
	@/usr/local/gcc6-aux/bin/gnatlink caesar_cipher.ali
	@mv caesar_cipher caesar_cipher.exe
	@rm caesar_cipher.o
	@rm caesar_cipher.ali
endif
clean:
	@rm caesar_cipher.exe
