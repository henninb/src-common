ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -oprime.exe prime.pas
#	@mv prime prime.exe
	@rm prime.o
#	@ppc386 -o"ex.exe" prime.pas
#	@del prime.o prime.ow
#	@gpc --automake -s -O2 --executable-file-name prime.pas
gpc:
	@gpc prime.pas -o prime.exe
Windows_NT:
	@ppc386 -oprime.exe prime.pas
	@del prime.o
