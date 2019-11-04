ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma combinations.ml -o combinations.exe
	@rm combinations.cmo combinations.cmi
Windows_NT:
	@ocamlc unix.cma combinations.ml -o combinations.exe
	@del combinations.cmo combinations.cmi
