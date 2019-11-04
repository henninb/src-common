ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -oexception_handler.exe exception_handler.pas
#	@mv exception_handler exception_handler.exe
	@rm exception_handler.o
#	@ppc386 -o"ex.exe" exception_handler.pas
#	@del exception_handler.o exception_handler.ow
#	@gpc --automake -s -O2 --executable-file-name exception_handler.pas
gpc:
	@gpc exception_handler.pas -o exception_handler.exe
Windows_NT:
	@ppc386 -oexception_handler.exe exception_handler.pas
	@del exception_handler.o
