ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@kotlinc FileWrite.kt -include-runtime -d FileWriteManifest.jar
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\FileWrite.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/FileWrite.jar .
	@rm -rf build .gradle
endif
clean:
	@rm FileWrite.jar
