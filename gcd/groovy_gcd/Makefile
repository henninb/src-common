ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc gcd.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf gcd.jar gcd.class
	@move "gcd.jar" "gcdManifest.jar"
	@del gcd.class
else
	@jar cmf manifest.mf gcd.jar gcd.class
	@mv gcd.jar gcdManifest.jar
	@rm gcd.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\gcd.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/gcd.jar .
	@rm -rf build .gradle
endif
clean:
	@rm gcd.jar
