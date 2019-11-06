ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc JsonWrite.kt -include-runtime -d JsonWrite.jar
	@rm -rf JsonWrite
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\JsonWrite.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/JsonWrite.jar .
	@rm -rf build .gradle
endif
clean:
	@rm JsonWrite.jar
