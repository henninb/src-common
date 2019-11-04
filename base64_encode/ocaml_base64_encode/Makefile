ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma base64_encode.ml -o base64_encode.exe
	@rm base64_encode.cmo base64_encode.cmi
Windows_NT:
	@ocamlc unix.cma base64_encode.ml -o base64_encode.exe
	@del base64_encode.cmo base64_encode.cmi
