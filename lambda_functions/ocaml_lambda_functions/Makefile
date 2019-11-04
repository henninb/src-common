ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma lambda_functions.ml -o lambda_functions.exe
	@rm lambda_functions.cmo lambda_functions.cmi
Windows_NT:
	@ocamlc unix.cma lambda_functions.ml -o lambda_functions.exe
	@del lambda_functions.cmo lambda_functions.cmi
