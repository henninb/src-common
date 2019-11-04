ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma leap_year.ml -o leap_year.exe
	@rm leap_year.cmo leap_year.cmi
Windows_NT:
	@ocamlc unix.cma leap_year.ml -o leap_year.exe
	@del leap_year.cmo leap_year.cmi
