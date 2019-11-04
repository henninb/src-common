ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -ocombinations.exe combinations.pas
#	@mv combinations combinations.exe
	@rm combinations.o
#	@ppc386 -o"ex.exe" combinations.pas
#	@del combinations.o combinations.ow
#	@gpc --automake -s -O2 --executable-file-name combinations.pas
gpc:
	@gpc combinations.pas -o combinations.exe
Windows_NT:
	@ppc386 -ocombinations.exe combinations.pas
	@del combinations.o
