ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma sierpinski_triangle.ml -o sierpinski_triangle.exe
	@rm sierpinski_triangle.cmo sierpinski_triangle.cmi
Windows_NT:
	@ocamlc unix.cma sierpinski_triangle.ml -o sierpinski_triangle.exe
	@del sierpinski_triangle.cmo sierpinski_triangle.cmi
