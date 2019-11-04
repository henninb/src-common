ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
	@scalac network_tcp_client_server.scala
	@jar cmf manifest.mf network_tcp_client_server.jar *.class
	@rm *.class
Windows_NT:
	@scalac network_tcp_client_server.scala
	@jar cmf manifest.mf network_tcp_client_server.jar *.class
#	@del *.class
clean:
	@echo clean
