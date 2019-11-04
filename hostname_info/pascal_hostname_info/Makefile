ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -ohostname_info.exe hostname_info.pas
#	@mv hostname_info hostname_info.exe
	@rm hostname_info.o
#	@ppc386 -o"ex.exe" hostname_info.pas
#	@del hostname_info.o hostname_info.ow
#	@gpc --automake -s -O2 --executable-file-name hostname_info.pas
gpc:
	@gpc hostname_info.pas -o hostname_info.exe
Windows_NT:
	@ppc386 -ohostname_info.exe hostname_info.pas
	@del hostname_info.o
