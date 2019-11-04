ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran collection_model.f -o collection_model.exe
Windows_NT:
	@gfortran collection_model.f -o collection_model.exe
