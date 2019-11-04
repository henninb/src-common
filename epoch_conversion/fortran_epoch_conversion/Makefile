ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran epoch_conversion.f -o epoch_conversion.exe
Windows_NT:
	@gfortran epoch_conversion.f -o epoch_conversion.exe
