ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc Fibonacci.kt -include-runtime -d Fibonacci.jar
	@rm -rf Fibonacci
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\Fibonacci.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/Fibonacci.jar .
	@rm -rf build .gradle
endif
clean:
	@rm Fibonacci.jar
