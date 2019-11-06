ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc EnvVariable.kt -include-runtime -d EnvVariable.jar
	@rm -rf EnvVariable
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\EnvVariable.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/EnvVariable.jar .
	@rm -rf build .gradle
endif
clean:
	@rm EnvVariable.jar
