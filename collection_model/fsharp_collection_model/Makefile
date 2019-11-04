ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo collection_model.fs
Windows_NT:
	@fsc /nologo collection_model.fs /o collection_model.exe
core:
	@dotnet
clean:
	@rm collection_model.exe
