ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc EpochConversion.kt -include-runtime -d EpochConversion.jar
	@rm -rf EpochConversion
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\EpochConversion.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/EpochConversion.jar .
	@rm -rf build .gradle
endif
clean:
	@rm EpochConversion.jar
