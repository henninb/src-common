ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc SierpinskiTriangle.kt -include-runtime -d SierpinskiTriangle.jar
	@rm -rf SierpinskiTriangle
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\SierpinskiTriangle.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/SierpinskiTriangle.jar .
	@rm -rf build .gradle
endif
clean:
	@rm SierpinskiTriangle.jar
