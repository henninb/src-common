ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma pi_calculate.ml -o pi_calculate.exe
	@rm pi_calculate.cmo pi_calculate.cmi
Windows_NT:
	@ocamlc unix.cma pi_calculate.ml -o pi_calculate.exe
	@del pi_calculate.cmo pi_calculate.cmi
