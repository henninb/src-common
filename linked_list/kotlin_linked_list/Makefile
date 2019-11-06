ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc LinkedList.kt -include-runtime -d LinkedList.jar
	@rm -rf LinkedList
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\LinkedList.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/LinkedList.jar .
	@rm -rf build .gradle
endif
clean:
	@rm LinkedList.jar
