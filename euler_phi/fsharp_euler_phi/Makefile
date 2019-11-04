ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo euler_phi.fs
Windows_NT:
	@fsc /nologo euler_phi.fs /o euler_phi.exe
core:
	@dotnet
clean:
	@rm euler_phi.exe
