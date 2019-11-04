ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -opi_calculate.exe pi_calculate.pas
#	@mv pi_calculate pi_calculate.exe
	@rm pi_calculate.o
#	@ppc386 -o"ex.exe" pi_calculate.pas
#	@del pi_calculate.o pi_calculate.ow
#	@gpc --automake -s -O2 --executable-file-name pi_calculate.pas
gpc:
	@gpc pi_calculate.pas -o pi_calculate.exe
Windows_NT:
	@ppc386 -opi_calculate.exe pi_calculate.pas
	@del pi_calculate.o
