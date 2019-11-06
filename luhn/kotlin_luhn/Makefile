ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc Luhn.kt -include-runtime -d Luhn.jar
	@rm -rf Luhn
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\Luhn.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/Luhn.jar .
	@rm -rf build .gradle
endif
clean:
	@rm Luhn.jar
