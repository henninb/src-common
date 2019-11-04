ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -odate_utc.exe date_utc.pas
#	@mv date_utc date_utc.exe
	@rm date_utc.o
#	@ppc386 -o"ex.exe" date_utc.pas
#	@del date_utc.o date_utc.ow
#	@gpc --automake -s -O2 --executable-file-name date_utc.pas
gpc:
	@gpc date_utc.pas -o date_utc.exe
Windows_NT:
	@ppc386 -odate_utc.exe date_utc.pas
	@del date_utc.o
