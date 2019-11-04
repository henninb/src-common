ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran base64_encode.f -o base64_encode.exe
Windows_NT:
	@gfortran base64_encode.f -o base64_encode.exe
