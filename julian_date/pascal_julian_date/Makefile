ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -ojulian_date.exe julian_date.pas
#	@mv julian_date julian_date.exe
	@rm julian_date.o
#	@ppc386 -o"ex.exe" julian_date.pas
#	@del julian_date.o julian_date.ow
#	@gpc --automake -s -O2 --executable-file-name julian_date.pas
gpc:
	@gpc julian_date.pas -o julian_date.exe
Windows_NT:
	@ppc386 -ojulian_date.exe julian_date.pas
	@del julian_date.o
