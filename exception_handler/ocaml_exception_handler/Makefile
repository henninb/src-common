ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma exception_handler.ml -o exception_handler.exe
	@rm exception_handler.cmo exception_handler.cmi
Windows_NT:
	@ocamlc unix.cma exception_handler.ml -o exception_handler.exe
	@del exception_handler.cmo exception_handler.cmi
