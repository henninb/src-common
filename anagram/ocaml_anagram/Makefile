ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma anagram.ml -o anagram.exe
	@rm anagram.cmo anagram.cmi
Windows_NT:
	@ocamlc unix.cma anagram.ml -o anagram.exe
	@del anagram.cmo anagram.cmi
