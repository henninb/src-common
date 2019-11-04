ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma date_today.ml -o date_today.exe
	@rm date_today.cmo date_today.cmi
Windows_NT:
	@ocamlc unix.cma date_today.ml -o date_today.exe
	@del date_today.cmo date_today.cmi
