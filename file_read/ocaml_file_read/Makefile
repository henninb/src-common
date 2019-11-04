ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma file_read.ml -o file_read.exe
	@rm file_read.cmo file_read.cmi
Windows_NT:
	@ocamlc unix.cma file_read.ml -o file_read.exe
	@del file_read.cmo file_read.cmi
