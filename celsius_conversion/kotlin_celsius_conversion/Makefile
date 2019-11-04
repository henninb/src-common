ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@kotlinc CelsiusConversion.kt -include-runtime -d CelsiusConversionManifest.jar
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\CelsiusConversion.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/CelsiusConversion.jar .
	@rm -rf build .gradle
endif
clean:
	@rm CelsiusConversion.jar
