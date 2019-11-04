ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -ocelsius_conversion.exe celsius_conversion.pas
#	@mv celsius_conversion celsius_conversion.exe
	@rm celsius_conversion.o
#	@ppc386 -o"ex.exe" celsius_conversion.pas
#	@del celsius_conversion.o celsius_conversion.ow
#	@gpc --automake -s -O2 --executable-file-name celsius_conversion.pas
gpc:
	@gpc celsius_conversion.pas -o celsius_conversion.exe
Windows_NT:
	@ppc386 -ocelsius_conversion.exe celsius_conversion.pas
	@del celsius_conversion.o
