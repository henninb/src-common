ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran bubble_sort.f -o bubble_sort.exe
Windows_NT:
	@gfortran bubble_sort.f -o bubble_sort.exe
