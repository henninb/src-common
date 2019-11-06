ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc Combinations.kt -include-runtime -d Combinations.jar
	@rm -rf Combinations
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\Combinations.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/Combinations.jar .
	@rm -rf build .gradle
endif
clean:
	@rm Combinations.jar
