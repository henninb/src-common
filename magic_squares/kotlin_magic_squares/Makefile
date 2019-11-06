ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc MagicSquares.kt -include-runtime -d MagicSquares.jar
	@rm -rf MagicSquares
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\MagicSquares.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/MagicSquares.jar .
	@rm -rf build .gradle
endif
clean:
	@rm MagicSquares.jar
