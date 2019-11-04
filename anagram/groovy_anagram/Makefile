ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc anagram.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf anagram.jar anagram.class
	@move "anagram.jar" "anagramManifest.jar"
	@del anagram.class
else
	@jar cmf manifest.mf anagram.jar anagram.class
	@mv anagram.jar anagramManifest.jar
	@rm anagram.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\anagram.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/anagram.jar .
	@rm -rf build .gradle
endif
clean:
	@rm anagram.jar
