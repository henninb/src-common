ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma recursive_for_loop.ml -o recursive_for_loop.exe
	@rm recursive_for_loop.cmo recursive_for_loop.cmi
Windows_NT:
	@ocamlc unix.cma recursive_for_loop.ml -o recursive_for_loop.exe
	@del recursive_for_loop.cmo recursive_for_loop.cmi
