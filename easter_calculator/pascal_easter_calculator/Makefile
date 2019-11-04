ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -oeaster_calculator.exe easter_calculator.pas
#	@mv easter_calculator easter_calculator.exe
	@rm easter_calculator.o
#	@ppc386 -o"ex.exe" easter_calculator.pas
#	@del easter_calculator.o easter_calculator.ow
#	@gpc --automake -s -O2 --executable-file-name easter_calculator.pas
gpc:
	@gpc easter_calculator.pas -o easter_calculator.exe
Windows_NT:
	@ppc386 -oeaster_calculator.exe easter_calculator.pas
	@del easter_calculator.o
