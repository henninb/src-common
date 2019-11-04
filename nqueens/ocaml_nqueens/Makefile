ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma nqueens.ml -o nqueens.exe
	@rm nqueens.cmo nqueens.cmi
Windows_NT:
	@ocamlc unix.cma nqueens.ml -o nqueens.exe
	@del nqueens.cmo nqueens.cmi
