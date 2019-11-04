ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma collection_model.ml -o collection_model.exe
	@rm collection_model.cmo collection_model.cmi
Windows_NT:
	@ocamlc unix.cma collection_model.ml -o collection_model.exe
	@del collection_model.cmo collection_model.cmi
