ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: fpc
fpc:
	@fpc -onetwork_tcp_client_server.exe network_tcp_client_server.pas
#	@mv network_tcp_client_server network_tcp_client_server.exe
	@rm network_tcp_client_server.o
#	@ppc386 -o"ex.exe" network_tcp_client_server.pas
#	@del network_tcp_client_server.o network_tcp_client_server.ow
#	@gpc --automake -s -O2 --executable-file-name network_tcp_client_server.pas
gpc:
	@gpc network_tcp_client_server.pas -o network_tcp_client_server.exe
Windows_NT:
	@ppc386 -onetwork_tcp_client_server.exe network_tcp_client_server.pas
	@del network_tcp_client_server.o
