ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma celsius_conversion.ml -o celsius_conversion.exe
	@rm celsius_conversion.cmo celsius_conversion.cmi
Windows_NT:
	@ocamlc unix.cma celsius_conversion.ml -o celsius_conversion.exe
	@del celsius_conversion.cmo celsius_conversion.cmi
