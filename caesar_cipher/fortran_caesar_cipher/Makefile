ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran caesar_cipher.f -o caesar_cipher.exe
Windows_NT:
	@gfortran caesar_cipher.f -o caesar_cipher.exe
