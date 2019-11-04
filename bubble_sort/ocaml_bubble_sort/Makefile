ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma bubble_sort.ml -o bubble_sort.exe
	@rm bubble_sort.cmo bubble_sort.cmi
Windows_NT:
	@ocamlc unix.cma bubble_sort.ml -o bubble_sort.exe
	@del bubble_sort.cmo bubble_sort.cmi
