ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc Prime.kt -include-runtime -d Prime.jar
	@rm -rf Prime
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\Prime.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/Prime.jar .
	@rm -rf build .gradle
endif
clean:
	@rm Prime.jar
