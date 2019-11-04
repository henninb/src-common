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
	@gcc -c file_write.adb
	@gnatbind -x file_write.ali
	@gnatlink file_write.ali
	@del file_write.o
	@del file_write.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make file_write.adb
	@mv file_write file_write.exe
	@rm file_write.o
	@rm file_write.ali
else ifeq ($(OS),Linux)
	@gcc -c file_write.adb
	@gnatbind -x file_write.ali
	@gnatlink file_write.ali
	@mv file_write file_write.exe
	@rm file_write.o
	@rm file_write.ali
else
	@/usr/local/gcc6-aux/bin/gnat make file_write.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x file_write.ali
	@/usr/local/gcc6-aux/bin/gnatlink file_write.ali
	@mv file_write file_write.exe
	@rm file_write.o
	@rm file_write.ali
endif
clean:
	@rm file_write.exe
