ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo pi_calculate.fs
Windows_NT:
	@fsc /nologo pi_calculate.fs /o pi_calculate.exe
core:
	@dotnet
clean:
	@rm pi_calculate.exe
