ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

Windows_NT:
	@ghc network_tcp_client_server.hs -o network_tcp_client_server.exe
	@del network_tcp_client_server.o network_tcp_client_server.hi
unix:
	@ghc network_tcp_client_server.hs -o network_tcp_client_server.exe # >&/dev/null
	@rm network_tcp_client_server.o network_tcp_client_server.hi
clean:
	@rm network_tcp_client_server.exe
