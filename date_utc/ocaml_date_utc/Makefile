ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma date_utc.ml -o date_utc.exe
	@rm date_utc.cmo date_utc.cmi
Windows_NT:
	@ocamlc unix.cma date_utc.ml -o date_utc.exe
	@del date_utc.cmo date_utc.cmi
