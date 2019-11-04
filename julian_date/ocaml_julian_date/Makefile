ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma julian_date.ml -o julian_date.exe
	@rm julian_date.cmo julian_date.cmi
Windows_NT:
	@ocamlc unix.cma julian_date.ml -o julian_date.exe
	@del julian_date.cmo julian_date.cmi
