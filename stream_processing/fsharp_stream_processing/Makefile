ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo stream_processing.fs
Windows_NT:
	@fsc /nologo stream_processing.fs /o stream_processing.exe
core:
	@dotnet
clean:
	@rm stream_processing.exe
