ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran lambda_functions.f -o lambda_functions.exe
Windows_NT:
	@gfortran lambda_functions.f -o lambda_functions.exe
