ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma entry_point.ml -o entry_point.exe
	@rm entry_point.cmo entry_point.cmi
Windows_NT:
	@ocamlc unix.cma entry_point.ml -o entry_point.exe
	@del entry_point.cmo entry_point.cmi
