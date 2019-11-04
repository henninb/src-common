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
	@gcc -c json_write.adb
	@gnatbind -x json_write.ali
	@gnatlink json_write.ali
	@del json_write.o
	@del json_write.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make json_write.adb
	@mv json_write json_write.exe
	@rm json_write.o
	@rm json_write.ali
else ifeq ($(OS),Linux)
	@gcc -c json_write.adb
	@gnatbind -x json_write.ali
	@gnatlink json_write.ali
	@mv json_write json_write.exe
	@rm json_write.o
	@rm json_write.ali
else
	@/usr/local/gcc6-aux/bin/gnat make json_write.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x json_write.ali
	@/usr/local/gcc6-aux/bin/gnatlink json_write.ali
	@mv json_write json_write.exe
	@rm json_write.o
	@rm json_write.ali
endif
clean:
	@rm json_write.exe
