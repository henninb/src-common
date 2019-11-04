ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma euler_phi.ml -o euler_phi.exe
	@rm euler_phi.cmo euler_phi.cmi
Windows_NT:
	@ocamlc unix.cma euler_phi.ml -o euler_phi.exe
	@del euler_phi.cmo euler_phi.cmi
