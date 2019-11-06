ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc RandomNumber.kt -include-runtime -d RandomNumber.jar
	@rm -rf RandomNumber
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\RandomNumber.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/RandomNumber.jar .
	@rm -rf build .gradle
endif
clean:
	@rm RandomNumber.jar
