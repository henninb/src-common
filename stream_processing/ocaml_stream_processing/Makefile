ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma stream_processing.ml -o stream_processing.exe
	@rm stream_processing.cmo stream_processing.cmi
Windows_NT:
	@ocamlc unix.cma stream_processing.ml -o stream_processing.exe
	@del stream_processing.cmo stream_processing.cmi
