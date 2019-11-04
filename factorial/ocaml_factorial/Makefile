ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma factorial.ml -o factorial.exe
	@rm factorial.cmo factorial.cmi
Windows_NT:
	@ocamlc unix.cma factorial.ml -o factorial.exe
	@del factorial.cmo factorial.cmi
