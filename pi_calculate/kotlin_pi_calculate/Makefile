ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@kotlinc PiCalculate.kt -include-runtime -d PiCalculateManifest.jar
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\PiCalculate.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/PiCalculate.jar .
	@rm -rf build .gradle
endif
clean:
	@rm PiCalculate.jar
