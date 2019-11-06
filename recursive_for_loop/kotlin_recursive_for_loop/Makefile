ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc RecursiveForLoop.kt -include-runtime -d RecursiveForLoop.jar
	@rm -rf RecursiveForLoop
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\RecursiveForLoop.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/RecursiveForLoop.jar .
	@rm -rf build .gradle
endif
clean:
	@rm RecursiveForLoop.jar
