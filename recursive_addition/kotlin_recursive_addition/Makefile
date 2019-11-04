ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@kotlinc RecursiveAddition.kt -include-runtime -d RecursiveAdditionManifest.jar
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\RecursiveAddition.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/RecursiveAddition.jar .
	@rm -rf build .gradle
endif
clean:
	@rm RecursiveAddition.jar
