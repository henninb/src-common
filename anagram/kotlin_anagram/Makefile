ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc Anagram.kt -include-runtime -d Anagram.jar
	@rm -rf Anagram
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\Anagram.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/Anagram.jar .
	@rm -rf build .gradle
endif
clean:
	@rm Anagram.jar
