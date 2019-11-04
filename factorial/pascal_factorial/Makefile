ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -ofactorial.exe factorial.pas
#	@mv factorial factorial.exe
	@rm factorial.o
#	@ppc386 -o"ex.exe" factorial.pas
#	@del factorial.o factorial.ow
#	@gpc --automake -s -O2 --executable-file-name factorial.pas
gpc:
	@gpc factorial.pas -o factorial.exe
Windows_NT:
	@ppc386 -ofactorial.exe factorial.pas
	@del factorial.o
