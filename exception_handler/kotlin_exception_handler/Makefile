ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc ExceptionHandler.kt -include-runtime -d ExceptionHandler.jar
	@rm -rf ExceptionHandler
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\ExceptionHandler.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/ExceptionHandler.jar .
	@rm -rf build .gradle
endif
clean:
	@rm ExceptionHandler.jar
