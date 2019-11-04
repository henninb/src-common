ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma epoch_conversion.ml -o epoch_conversion.exe
	@rm epoch_conversion.cmo epoch_conversion.cmi
Windows_NT:
	@ocamlc unix.cma epoch_conversion.ml -o epoch_conversion.exe
	@del epoch_conversion.cmo epoch_conversion.cmi
