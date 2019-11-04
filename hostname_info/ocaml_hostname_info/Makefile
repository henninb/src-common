ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma hostname_info.ml -o hostname_info.exe
	@rm hostname_info.cmo hostname_info.cmi
Windows_NT:
	@ocamlc unix.cma hostname_info.ml -o hostname_info.exe
	@del hostname_info.cmo hostname_info.cmi
