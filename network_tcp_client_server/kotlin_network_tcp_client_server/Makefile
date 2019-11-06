ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc NetworkTcpClientServer.kt -include-runtime -d NetworkTcpClientServer.jar
	@rm -rf NetworkTcpClientServer
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\NetworkTcpClientServer.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/NetworkTcpClientServer.jar .
	@rm -rf build .gradle
endif
clean:
	@rm NetworkTcpClientServer.jar
