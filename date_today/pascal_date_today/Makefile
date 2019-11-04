ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -odate_today.exe date_today.pas
#	@mv date_today date_today.exe
	@rm date_today.o
#	@ppc386 -o"ex.exe" date_today.pas
#	@del date_today.o date_today.ow
#	@gpc --automake -s -O2 --executable-file-name date_today.pas
gpc:
	@gpc date_today.pas -o date_today.exe
Windows_NT:
	@ppc386 -odate_today.exe date_today.pas
	@del date_today.o
