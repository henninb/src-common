ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc EasterCalculator.kt -include-runtime -d EasterCalculator.jar
	@rm -rf EasterCalculator
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\EasterCalculator.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/EasterCalculator.jar .
	@rm -rf build .gradle
endif
clean:
	@rm EasterCalculator.jar
