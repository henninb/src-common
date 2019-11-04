ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -osleep.exe sleep.pas
#	@mv sleep sleep.exe
	@rm sleep.o
#	@ppc386 -o"ex.exe" sleep.pas
#	@del sleep.o sleep.ow
#	@gpc --automake -s -O2 --executable-file-name sleep.pas
gpc:
	@gpc sleep.pas -o sleep.exe
Windows_NT:
	@ppc386 -osleep.exe sleep.pas
	@del sleep.o
