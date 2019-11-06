ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc Gcd.kt -include-runtime -d Gcd.jar
	@rm -rf Gcd
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\Gcd.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/Gcd.jar .
	@rm -rf build .gradle
endif
clean:
	@rm Gcd.jar
