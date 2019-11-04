ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@ocamlc unix.cma network_tcp_client_server.ml -o network_tcp_client_server.exe
	@rm network_tcp_client_server.cmo network_tcp_client_server.cmi
Windows_NT:
	@ocamlc unix.cma network_tcp_client_server.ml -o network_tcp_client_server.exe
	@del network_tcp_client_server.cmo network_tcp_client_server.cmi
