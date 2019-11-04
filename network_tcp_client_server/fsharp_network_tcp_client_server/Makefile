ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@fsharpc --nologo network_tcp_client_server.fs
Windows_NT:
	@fsc /nologo network_tcp_client_server.fs /o network_tcp_client_server.exe
core:
	@dotnet
clean:
	@rm network_tcp_client_server.exe
