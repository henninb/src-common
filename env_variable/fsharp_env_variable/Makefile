ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo env_variable.fs
Windows_NT:
	@fsc /nologo env_variable.fs /o env_variable.exe
core:
	@dotnet
clean:
	@rm env_variable.exe
