ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -orandom_number.exe random_number.pas
#	@mv random_number random_number.exe
	@rm random_number.o
#	@ppc386 -o"ex.exe" random_number.pas
#	@del random_number.o random_number.ow
#	@gpc --automake -s -O2 --executable-file-name random_number.pas
gpc:
	@gpc random_number.pas -o random_number.exe
Windows_NT:
	@ppc386 -orandom_number.exe random_number.pas
	@del random_number.o
