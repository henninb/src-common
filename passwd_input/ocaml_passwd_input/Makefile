ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma passwd_input.ml -o passwd_input.exe
	@rm passwd_input.cmo passwd_input.cmi
Windows_NT:
	@ocamlc unix.cma passwd_input.ml -o passwd_input.exe
	@del passwd_input.cmo passwd_input.cmi
