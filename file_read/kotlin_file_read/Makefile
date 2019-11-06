ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc FileRead.kt -include-runtime -d FileRead.jar
	@rm -rf FileRead
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\FileRead.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/FileRead.jar .
	@rm -rf build .gradle
endif
clean:
	@rm FileRead.jar
