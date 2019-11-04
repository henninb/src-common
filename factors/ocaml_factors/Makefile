ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma factors.ml -o factors.exe
	@rm factors.cmo factors.cmi
Windows_NT:
	@ocamlc unix.cma factors.ml -o factors.exe
	@del factors.cmo factors.cmi
