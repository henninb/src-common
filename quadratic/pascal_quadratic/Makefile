ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -oquadratic.exe quadratic.pas
#	@mv quadratic quadratic.exe
	@rm quadratic.o
#	@ppc386 -o"ex.exe" quadratic.pas
#	@del quadratic.o quadratic.ow
#	@gpc --automake -s -O2 --executable-file-name quadratic.pas
gpc:
	@gpc quadratic.pas -o quadratic.exe
Windows_NT:
	@ppc386 -oquadratic.exe quadratic.pas
	@del quadratic.o
