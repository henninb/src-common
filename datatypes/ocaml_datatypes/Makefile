ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma datatypes.ml -o datatypes.exe
	@rm datatypes.cmo datatypes.cmi
Windows_NT:
	@ocamlc unix.cma datatypes.ml -o datatypes.exe
	@del datatypes.cmo datatypes.cmi
