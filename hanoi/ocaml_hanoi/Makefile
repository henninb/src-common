ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma hanoi.ml -o hanoi.exe
	@rm hanoi.cmo hanoi.cmi
Windows_NT:
	@ocamlc unix.cma hanoi.ml -o hanoi.exe
	@del hanoi.cmo hanoi.cmi
