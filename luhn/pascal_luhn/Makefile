ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -oluhn.exe luhn.pas
#	@mv luhn luhn.exe
	@rm luhn.o
#	@ppc386 -o"ex.exe" luhn.pas
#	@del luhn.o luhn.ow
#	@gpc --automake -s -O2 --executable-file-name luhn.pas
gpc:
	@gpc luhn.pas -o luhn.exe
Windows_NT:
	@ppc386 -oluhn.exe luhn.pas
	@del luhn.o
