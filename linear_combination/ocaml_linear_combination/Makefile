ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma linear_combination.ml -o linear_combination.exe
	@rm linear_combination.cmo linear_combination.cmi
Windows_NT:
	@ocamlc unix.cma linear_combination.ml -o linear_combination.exe
	@del linear_combination.cmo linear_combination.cmi
