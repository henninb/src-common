ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo base64_encode.fs
Windows_NT:
	@fsc /nologo base64_encode.fs /o base64_encode.exe
core:
	@dotnet
clean:
	@rm base64_encode.exe
