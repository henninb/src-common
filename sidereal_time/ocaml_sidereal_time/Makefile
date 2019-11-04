ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma sidereal_time.ml -o sidereal_time.exe
	@rm sidereal_time.cmo sidereal_time.cmi
Windows_NT:
	@ocamlc unix.cma sidereal_time.ml -o sidereal_time.exe
	@del sidereal_time.cmo sidereal_time.cmi
