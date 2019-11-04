ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma quadratic.ml -o quadratic.exe
	@rm quadratic.cmo quadratic.cmi
Windows_NT:
	@ocamlc unix.cma quadratic.ml -o quadratic.exe
	@del quadratic.cmo quadratic.cmi
