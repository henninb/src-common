ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc network_tcp_client_server.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf network_tcp_client_server.jar network_tcp_client_server.class
	@move "network_tcp_client_server.jar" "network_tcp_client_serverManifest.jar"
	@del network_tcp_client_server.class
else
	@jar cmf manifest.mf network_tcp_client_server.jar network_tcp_client_server.class
	@mv network_tcp_client_server.jar network_tcp_client_serverManifest.jar
	@rm network_tcp_client_server.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\network_tcp_client_server.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/network_tcp_client_server.jar .
	@rm -rf build .gradle
endif
clean:
	@rm network_tcp_client_server.jar
