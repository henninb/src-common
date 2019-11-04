ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@kotlinc PermutePrintInteger.kt -include-runtime -d PermutePrintIntegerManifest.jar
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
