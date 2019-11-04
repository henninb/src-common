ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -odegrees_to_radians.exe degrees_to_radians.pas
#	@mv degrees_to_radians degrees_to_radians.exe
	@rm degrees_to_radians.o
#	@ppc386 -o"ex.exe" degrees_to_radians.pas
#	@del degrees_to_radians.o degrees_to_radians.ow
#	@gpc --automake -s -O2 --executable-file-name degrees_to_radians.pas
gpc:
	@gpc degrees_to_radians.pas -o degrees_to_radians.exe
Windows_NT:
	@ppc386 -odegrees_to_radians.exe degrees_to_radians.pas
	@del degrees_to_radians.o
