ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc LambdaFunctions.kt -include-runtime -d LambdaFunctions.jar
	@rm -rf LambdaFunctions
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\LambdaFunctions.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/LambdaFunctions.jar .
	@rm -rf build .gradle
endif
clean:
	@rm LambdaFunctions.jar
