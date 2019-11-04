ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma postgresql_connect.ml -o postgresql_connect.exe
	@rm postgresql_connect.cmo postgresql_connect.cmi
Windows_NT:
	@ocamlc unix.cma postgresql_connect.ml -o postgresql_connect.exe
	@del postgresql_connect.cmo postgresql_connect.cmi
