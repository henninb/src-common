ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -ofactors.exe factors.pas
#	@mv factors factors.exe
	@rm factors.o
#	@ppc386 -o"ex.exe" factors.pas
#	@del factors.o factors.ow
#	@gpc --automake -s -O2 --executable-file-name factors.pas
gpc:
	@gpc factors.pas -o factors.exe
Windows_NT:
	@ppc386 -ofactors.exe factors.pas
	@del factors.o
