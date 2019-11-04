ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -oexample.exe example.pas
#	@mv example example.exe
	@rm example.o
#	@ppc386 -o"ex.exe" example.pas
#	@del example.o example.ow
#	@gpc --automake -s -O2 --executable-file-name example.pas
gpc:
	@gpc example.pas -o example.exe
Windows_NT:
	@ppc386 -oexample.exe example.pas
	@del example.o
