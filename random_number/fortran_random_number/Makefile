ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran random_number.f -o random_number.exe
Windows_NT:
	@gfortran random_number.f -o random_number.exe
