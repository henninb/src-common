ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -opostgresql_connect.exe postgresql_connect.pas
#	@mv postgresql_connect postgresql_connect.exe
	@rm postgresql_connect.o
#	@ppc386 -o"ex.exe" postgresql_connect.pas
#	@del postgresql_connect.o postgresql_connect.ow
#	@gpc --automake -s -O2 --executable-file-name postgresql_connect.pas
gpc:
	@gpc postgresql_connect.pas -o postgresql_connect.exe
Windows_NT:
	@ppc386 -opostgresql_connect.exe postgresql_connect.pas
	@del postgresql_connect.o
