ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -oeuler_phi.exe euler_phi.pas
#	@mv euler_phi euler_phi.exe
	@rm euler_phi.o
#	@ppc386 -o"ex.exe" euler_phi.pas
#	@del euler_phi.o euler_phi.ow
#	@gpc --automake -s -O2 --executable-file-name euler_phi.pas
gpc:
	@gpc euler_phi.pas -o euler_phi.exe
Windows_NT:
	@ppc386 -oeuler_phi.exe euler_phi.pas
	@del euler_phi.o
