ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@go build -o network_tcp_client_server.exe
Windows_NT:
	@go build -o network_tcp_client_server.exe
clean:
