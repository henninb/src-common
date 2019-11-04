ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -oroman.exe roman.pas
#	@mv roman roman.exe
	@rm roman.o
#	@ppc386 -o"ex.exe" roman.pas
#	@del roman.o roman.ow
#	@gpc --automake -s -O2 --executable-file-name roman.pas
gpc:
	@gpc roman.pas -o roman.exe
Windows_NT:
	@ppc386 -oroman.exe roman.pas
	@del roman.o
