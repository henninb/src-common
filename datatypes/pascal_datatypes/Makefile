ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -odatatypes.exe datatypes.pas
#	@mv datatypes datatypes.exe
	@rm datatypes.o
#	@ppc386 -o"ex.exe" datatypes.pas
#	@del datatypes.o datatypes.ow
#	@gpc --automake -s -O2 --executable-file-name datatypes.pas
gpc:
	@gpc datatypes.pas -o datatypes.exe
Windows_NT:
	@ppc386 -odatatypes.exe datatypes.pas
	@del datatypes.o
