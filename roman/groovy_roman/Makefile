ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc roman.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf roman.jar roman.class
	@move "roman.jar" "romanManifest.jar"
	@del roman.class
else
	@jar cmf manifest.mf roman.jar roman.class
	@mv roman.jar romanManifest.jar
	@rm roman.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\roman.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/roman.jar .
	@rm -rf build .gradle
endif
clean:
	@rm roman.jar
