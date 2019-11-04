ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma magic_squares.ml -o magic_squares.exe
	@rm magic_squares.cmo magic_squares.cmi
Windows_NT:
	@ocamlc unix.cma magic_squares.ml -o magic_squares.exe
	@del magic_squares.cmo magic_squares.cmi
