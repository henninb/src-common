ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma date_dow.ml -o date_dow.exe
	@rm date_dow.cmo date_dow.cmi
Windows_NT:
	@ocamlc unix.cma date_dow.ml -o date_dow.exe
	@del date_dow.cmo date_dow.cmi
