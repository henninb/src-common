ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma timezone.ml -o timezone.exe
	@rm timezone.cmo timezone.cmi
Windows_NT:
	@ocamlc unix.cma timezone.ml -o timezone.exe
	@del timezone.cmo timezone.cmi
