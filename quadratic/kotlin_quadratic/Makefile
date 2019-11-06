ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc Quadratic.kt -include-runtime -d Quadratic.jar
	@rm -rf Quadratic
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\Quadratic.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/Quadratic.jar .
	@rm -rf build .gradle
endif
clean:
	@rm Quadratic.jar
