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
	@gcc -c collection_model.adb
	@gnatbind -x collection_model.ali
	@gnatlink collection_model.ali
	@del collection_model.o
	@del collection_model.ali
unix:
ifeq ($(DISTRO),LinuxMint)
	@gnat make collection_model.adb
	@mv collection_model collection_model.exe
	@rm collection_model.o
	@rm collection_model.ali
else ifeq ($(OS),Linux)
	@gcc -c collection_model.adb
	@gnatbind -x collection_model.ali
	@gnatlink collection_model.ali
	@mv collection_model collection_model.exe
	@rm collection_model.o
	@rm collection_model.ali
else
	@/usr/local/gcc6-aux/bin/gnat make collection_model.adb
	@/usr/local/gcc6-aux/bin/gnatbind -x collection_model.ali
	@/usr/local/gcc6-aux/bin/gnatlink collection_model.ali
	@mv collection_model collection_model.exe
	@rm collection_model.o
	@rm collection_model.ali
endif
clean:
	@rm collection_model.exe
