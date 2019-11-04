ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -odate_dow.exe date_dow.pas
#	@mv date_dow date_dow.exe
	@rm date_dow.o
#	@ppc386 -o"ex.exe" date_dow.pas
#	@del date_dow.o date_dow.ow
#	@gpc --automake -s -O2 --executable-file-name date_dow.pas
gpc:
	@gpc date_dow.pas -o date_dow.exe
Windows_NT:
	@ppc386 -odate_dow.exe date_dow.pas
	@del date_dow.o
