ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@kotlinc CaesarCipher.kt -include-runtime -d CaesarCipherManifest.jar
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\CaesarCipher.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/CaesarCipher.jar .
	@rm -rf build .gradle
endif
clean:
	@rm CaesarCipher.jar
