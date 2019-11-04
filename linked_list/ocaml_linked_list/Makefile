ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma linked_list.ml -o linked_list.exe
	@rm linked_list.cmo linked_list.cmi
Windows_NT:
	@ocamlc unix.cma linked_list.ml -o linked_list.exe
	@del linked_list.cmo linked_list.cmi
