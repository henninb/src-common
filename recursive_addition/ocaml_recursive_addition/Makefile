ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma recursive_addition.ml -o recursive_addition.exe
	@rm recursive_addition.cmo recursive_addition.cmi
Windows_NT:
	@ocamlc unix.cma recursive_addition.ml -o recursive_addition.exe
	@del recursive_addition.cmo recursive_addition.cmi
