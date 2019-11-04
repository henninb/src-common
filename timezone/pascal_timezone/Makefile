ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -otimezone.exe timezone.pas
#	@mv timezone timezone.exe
	@rm timezone.o
#	@ppc386 -o"ex.exe" timezone.pas
#	@del timezone.o timezone.ow
#	@gpc --automake -s -O2 --executable-file-name timezone.pas
gpc:
	@gpc timezone.pas -o timezone.exe
Windows_NT:
	@ppc386 -otimezone.exe timezone.pas
	@del timezone.o
