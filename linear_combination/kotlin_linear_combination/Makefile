ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc LinearCombination.kt -include-runtime -d LinearCombination.jar
	@rm -rf LinearCombination
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\LinearCombination.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/LinearCombination.jar .
	@rm -rf build .gradle
endif
clean:
	@rm LinearCombination.jar
