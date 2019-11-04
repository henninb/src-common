ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma luhn.ml -o luhn.exe
	@rm luhn.cmo luhn.cmi
Windows_NT:
	@ocamlc unix.cma luhn.ml -o luhn.exe
	@del luhn.cmo luhn.cmi
