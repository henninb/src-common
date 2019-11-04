ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix

unix:
	@g++ -std=c++11 network_tcp_client_server.cpp -o network_tcp_client_server.exe
Windows_NT:
	@g++ -std=c++11 network_tcp_client_server.cpp -o network_tcp_client_server.exe
