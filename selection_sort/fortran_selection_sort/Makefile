ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran selection_sort.f -o selection_sort.exe
Windows_NT:
	@gfortran selection_sort.f -o selection_sort.exe
