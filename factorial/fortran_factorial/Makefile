ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran factorial.f -o factorial.exe
Windows_NT:
	@gfortran factorial.f -o factorial.exe
