ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc Factors.kt -include-runtime -d Factors.jar
	@rm -rf Factors
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\Factors.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/Factors.jar .
	@rm -rf build .gradle
endif
clean:
	@rm Factors.jar
