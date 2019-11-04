ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma json_write.ml -o json_write.exe
	@rm json_write.cmo json_write.cmi
Windows_NT:
	@ocamlc unix.cma json_write.ml -o json_write.exe
	@del json_write.cmo json_write.cmi
