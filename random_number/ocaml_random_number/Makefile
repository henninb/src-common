ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma random_number.ml -o random_number.exe
	@rm random_number.cmo random_number.cmi
Windows_NT:
	@ocamlc unix.cma random_number.ml -o random_number.exe
	@del random_number.cmo random_number.cmi
