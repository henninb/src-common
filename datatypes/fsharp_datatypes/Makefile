ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo datatypes.fs
Windows_NT:
	@fsc /nologo datatypes.fs /o datatypes.exe
core:
	@dotnet
clean:
	@rm datatypes.exe
