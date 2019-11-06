ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc Base64Encode.kt -include-runtime -d Base64Encode.jar
	@rm -rf Base64Encode
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\Base64Encode.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/Base64Encode.jar .
	@rm -rf build .gradle
endif
clean:
	@rm Base64Encode.jar
