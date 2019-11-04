ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -oentry_point.exe entry_point.pas
#	@mv entry_point entry_point.exe
	@rm entry_point.o
#	@ppc386 -o"ex.exe" entry_point.pas
#	@del entry_point.o entry_point.ow
#	@gpc --automake -s -O2 --executable-file-name entry_point.pas
gpc:
	@gpc entry_point.pas -o entry_point.exe
Windows_NT:
	@ppc386 -oentry_point.exe entry_point.pas
	@del entry_point.o
