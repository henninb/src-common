ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma sleep.ml -o sleep.exe
	@rm sleep.cmo sleep.cmi
Windows_NT:
	@ocamlc unix.cma sleep.ml -o sleep.exe
	@del sleep.cmo sleep.cmi
