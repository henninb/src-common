ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc Roman.kt -include-runtime -d Roman.jar
	@rm -rf Roman
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\Roman.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/Roman.jar .
	@rm -rf build .gradle
endif
clean:
	@rm Roman.jar
