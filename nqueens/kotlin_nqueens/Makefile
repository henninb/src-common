ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc Nqueens.kt -include-runtime -d Nqueens.jar
	@rm -rf Nqueens
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\Nqueens.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/Nqueens.jar .
	@rm -rf build .gradle
endif
clean:
	@rm Nqueens.jar
