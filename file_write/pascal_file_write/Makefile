ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -ofile_write.exe file_write.pas
#	@mv file_write file_write.exe
	@rm file_write.o
#	@ppc386 -o"ex.exe" file_write.pas
#	@del file_write.o file_write.ow
#	@gpc --automake -s -O2 --executable-file-name file_write.pas
gpc:
	@gpc file_write.pas -o file_write.exe
Windows_NT:
	@ppc386 -ofile_write.exe file_write.pas
	@del file_write.o
