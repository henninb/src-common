ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo caesar_cipher.fs
Windows_NT:
	@fsc /nologo caesar_cipher.fs /o caesar_cipher.exe
core:
	@dotnet
clean:
	@rm caesar_cipher.exe
