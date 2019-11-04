ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc luhn.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf luhn.jar luhn.class
	@move "luhn.jar" "luhnManifest.jar"
	@del luhn.class
else
	@jar cmf manifest.mf luhn.jar luhn.class
	@mv luhn.jar luhnManifest.jar
	@rm luhn.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\luhn.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/luhn.jar .
	@rm -rf build .gradle
endif
clean:
	@rm luhn.jar
