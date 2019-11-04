ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@erlc network_tcp_client_server.erl
Windows_NT:
	@erlc network_tcp_client_server.erl
clean:
