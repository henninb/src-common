ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc DegreesToRadians.kt -include-runtime -d DegreesToRadians.jar
	@rm -rf DegreesToRadians
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\DegreesToRadians.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/DegreesToRadians.jar .
	@rm -rf build .gradle
endif
clean:
	@rm DegreesToRadians.jar
