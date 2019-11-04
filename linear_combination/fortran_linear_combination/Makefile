ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran linear_combination.f -o linear_combination.exe
Windows_NT:
	@gfortran linear_combination.f -o linear_combination.exe
