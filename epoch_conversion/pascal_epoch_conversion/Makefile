ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -oepoch_conversion.exe epoch_conversion.pas
#	@mv epoch_conversion epoch_conversion.exe
	@rm epoch_conversion.o
#	@ppc386 -o"ex.exe" epoch_conversion.pas
#	@del epoch_conversion.o epoch_conversion.ow
#	@gpc --automake -s -O2 --executable-file-name epoch_conversion.pas
gpc:
	@gpc epoch_conversion.pas -o epoch_conversion.exe
Windows_NT:
	@ppc386 -oepoch_conversion.exe epoch_conversion.pas
	@del epoch_conversion.o
