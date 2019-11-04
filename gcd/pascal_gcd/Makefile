ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -ogcd.exe gcd.pas
#	@mv gcd gcd.exe
	@rm gcd.o
#	@ppc386 -o"ex.exe" gcd.pas
#	@del gcd.o gcd.ow
#	@gpc --automake -s -O2 --executable-file-name gcd.pas
gpc:
	@gpc gcd.pas -o gcd.exe
Windows_NT:
	@ppc386 -ogcd.exe gcd.pas
	@del gcd.o
