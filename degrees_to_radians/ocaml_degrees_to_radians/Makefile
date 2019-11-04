ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma degrees_to_radians.ml -o degrees_to_radians.exe
	@rm degrees_to_radians.cmo degrees_to_radians.cmi
Windows_NT:
	@ocamlc unix.cma degrees_to_radians.ml -o degrees_to_radians.exe
	@del degrees_to_radians.cmo degrees_to_radians.cmi
