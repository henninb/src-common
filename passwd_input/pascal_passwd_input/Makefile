ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -opasswd_input.exe passwd_input.pas
#	@mv passwd_input passwd_input.exe
	@rm passwd_input.o
#	@ppc386 -o"ex.exe" passwd_input.pas
#	@del passwd_input.o passwd_input.ow
#	@gpc --automake -s -O2 --executable-file-name passwd_input.pas
gpc:
	@gpc passwd_input.pas -o passwd_input.exe
Windows_NT:
	@ppc386 -opasswd_input.exe passwd_input.pas
	@del passwd_input.o
