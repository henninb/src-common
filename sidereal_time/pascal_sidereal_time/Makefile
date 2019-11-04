ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -osidereal_time.exe sidereal_time.pas
#	@mv sidereal_time sidereal_time.exe
	@rm sidereal_time.o
#	@ppc386 -o"ex.exe" sidereal_time.pas
#	@del sidereal_time.o sidereal_time.ow
#	@gpc --automake -s -O2 --executable-file-name sidereal_time.pas
gpc:
	@gpc sidereal_time.pas -o sidereal_time.exe
Windows_NT:
	@ppc386 -osidereal_time.exe sidereal_time.pas
	@del sidereal_time.o
