ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
ifeq ($(OS),FreeBSD)
	@luac52 -o network_tcp_client_server.exe network_tcp_client_server.lua
endif
ifeq ($(OS),Linux)
	@luac -o network_tcp_client_server.exe network_tcp_client_server.lua
endif
Windows_NT:
	@luac network_tcp_client_server.lua
clean: