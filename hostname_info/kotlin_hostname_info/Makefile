ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc HostnameInfo.kt -include-runtime -d HostnameInfo.jar
	@rm -rf HostnameInfo
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\HostnameInfo.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/HostnameInfo.jar .
	@rm -rf build .gradle
endif
clean:
	@rm HostnameInfo.jar
