ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo epoch_conversion.fs
Windows_NT:
	@fsc /nologo epoch_conversion.fs /o epoch_conversion.exe
core:
	@dotnet
clean:
	@rm epoch_conversion.exe
