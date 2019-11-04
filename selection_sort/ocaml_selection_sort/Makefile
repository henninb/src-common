ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma selection_sort.ml -o selection_sort.exe
	@rm selection_sort.cmo selection_sort.cmi
Windows_NT:
	@ocamlc unix.cma selection_sort.ml -o selection_sort.exe
	@del selection_sort.cmo selection_sort.cmi
