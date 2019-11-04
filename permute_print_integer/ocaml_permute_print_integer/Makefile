ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma permute_print_integer.ml -o permute_print_integer.exe
	@rm permute_print_integer.cmo permute_print_integer.cmi
Windows_NT:
	@ocamlc unix.cma permute_print_integer.ml -o permute_print_integer.exe
	@del permute_print_integer.cmo permute_print_integer.cmi
