ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma gcd.ml -o gcd.exe
	@rm gcd.cmo gcd.cmi
Windows_NT:
	@ocamlc unix.cma gcd.ml -o gcd.exe
	@del gcd.cmo gcd.cmi
