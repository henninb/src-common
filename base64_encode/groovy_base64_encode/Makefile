ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc base64_encode.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf base64_encode.jar base64_encode.class
	@move "base64_encode.jar" "base64_encodeManifest.jar"
	@del base64_encode.class
else
	@jar cmf manifest.mf base64_encode.jar base64_encode.class
	@mv base64_encode.jar base64_encodeManifest.jar
	@rm base64_encode.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\base64_encode.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/base64_encode.jar .
	@rm -rf build .gradle
endif
clean:
	@rm base64_encode.jar
