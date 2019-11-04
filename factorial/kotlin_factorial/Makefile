ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@kotlinc Factorial.kt -include-runtime -d FactorialManifest.jar
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\Factorial.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/Factorial.jar .
	@rm -rf build .gradle
endif
clean:
	@rm Factorial.jar
