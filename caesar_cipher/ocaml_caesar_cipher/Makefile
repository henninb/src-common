ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma caesar_cipher.ml -o caesar_cipher.exe
	@rm caesar_cipher.cmo caesar_cipher.cmi
Windows_NT:
	@ocamlc unix.cma caesar_cipher.ml -o caesar_cipher.exe
	@del caesar_cipher.cmo caesar_cipher.cmi
