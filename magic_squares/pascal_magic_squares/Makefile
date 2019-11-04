ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -omagic_squares.exe magic_squares.pas
#	@mv magic_squares magic_squares.exe
	@rm magic_squares.o
#	@ppc386 -o"ex.exe" magic_squares.pas
#	@del magic_squares.o magic_squares.ow
#	@gpc --automake -s -O2 --executable-file-name magic_squares.pas
gpc:
	@gpc magic_squares.pas -o magic_squares.exe
Windows_NT:
	@ppc386 -omagic_squares.exe magic_squares.pas
	@del magic_squares.o
