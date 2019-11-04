ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@gfortran network_tcp_client_server.f -o network_tcp_client_server.exe
Windows_NT:
	@gfortran network_tcp_client_server.f -o network_tcp_client_server.exe
