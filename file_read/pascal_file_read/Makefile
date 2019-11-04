ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -ofile_read.exe file_read.pas
#	@mv file_read file_read.exe
	@rm file_read.o
#	@ppc386 -o"ex.exe" file_read.pas
#	@del file_read.o file_read.ow
#	@gpc --automake -s -O2 --executable-file-name file_read.pas
gpc:
	@gpc file_read.pas -o file_read.exe
Windows_NT:
	@ppc386 -ofile_read.exe file_read.pas
	@del file_read.o
