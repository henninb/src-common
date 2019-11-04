ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -ohanoi.exe hanoi.pas
#	@mv hanoi hanoi.exe
	@rm hanoi.o
#	@ppc386 -o"ex.exe" hanoi.pas
#	@del hanoi.o hanoi.ow
#	@gpc --automake -s -O2 --executable-file-name hanoi.pas
gpc:
	@gpc hanoi.pas -o hanoi.exe
Windows_NT:
	@ppc386 -ohanoi.exe hanoi.pas
	@del hanoi.o
