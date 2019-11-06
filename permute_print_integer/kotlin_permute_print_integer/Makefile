ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc PermutePrintInteger.kt -include-runtime -d PermutePrintInteger.jar
	@rm -rf PermutePrintInteger
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\PermutePrintInteger.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/PermutePrintInteger.jar .
	@rm -rf build .gradle
endif
clean:
	@rm PermutePrintInteger.jar
