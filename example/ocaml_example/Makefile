ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma example.ml -o example.exe
	@rm example.cmo example.cmi
Windows_NT:
	@ocamlc unix.cma example.ml -o example.exe
	@del example.cmo example.cmi
