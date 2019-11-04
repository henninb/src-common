ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma env_variable.ml -o env_variable.exe
	@rm env_variable.cmo env_variable.cmi
Windows_NT:
	@ocamlc unix.cma env_variable.ml -o env_variable.exe
	@del env_variable.cmo env_variable.cmi
