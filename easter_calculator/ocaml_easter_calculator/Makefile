ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma easter_calculator.ml -o easter_calculator.exe
	@rm easter_calculator.cmo easter_calculator.cmi
Windows_NT:
	@ocamlc unix.cma easter_calculator.ml -o easter_calculator.exe
	@del easter_calculator.cmo easter_calculator.cmi
