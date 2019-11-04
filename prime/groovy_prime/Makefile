ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc prime.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf prime.jar prime.class
	@move "prime.jar" "primeManifest.jar"
	@del prime.class
else
	@jar cmf manifest.mf prime.jar prime.class
	@mv prime.jar primeManifest.jar
	@rm prime.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\prime.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/prime.jar .
	@rm -rf build .gradle
endif
clean:
	@rm prime.jar
