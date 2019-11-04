ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma file_write.ml -o file_write.exe
	@rm file_write.cmo file_write.cmi
Windows_NT:
	@ocamlc unix.cma file_write.ml -o file_write.exe
	@del file_write.cmo file_write.cmi
