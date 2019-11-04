ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma prime.ml -o prime.exe
	@rm prime.cmo prime.cmi
Windows_NT:
	@ocamlc unix.cma prime.ml -o prime.exe
	@del prime.cmo prime.cmi
