ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma roman.ml -o roman.exe
	@rm roman.cmo roman.cmi
Windows_NT:
	@ocamlc unix.cma roman.ml -o roman.exe
	@del roman.cmo roman.cmi
