ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma fibonacci.ml -o fibonacci.exe
	@rm fibonacci.cmo fibonacci.cmi
Windows_NT:
	@ocamlc unix.cma fibonacci.ml -o fibonacci.exe
	@del fibonacci.cmo fibonacci.cmi
