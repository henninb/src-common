ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -olinear_combination.exe linear_combination.pas
#	@mv linear_combination linear_combination.exe
	@rm linear_combination.o
#	@ppc386 -o"ex.exe" linear_combination.pas
#	@del linear_combination.o linear_combination.ow
#	@gpc --automake -s -O2 --executable-file-name linear_combination.pas
gpc:
	@gpc linear_combination.pas -o linear_combination.exe
Windows_NT:
	@ppc386 -olinear_combination.exe linear_combination.pas
	@del linear_combination.o
