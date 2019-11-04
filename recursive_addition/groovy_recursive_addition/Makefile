ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc recursive_addition.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf recursive_addition.jar recursive_addition.class
	@move "recursive_addition.jar" "recursive_additionManifest.jar"
	@del recursive_addition.class
else
	@jar cmf manifest.mf recursive_addition.jar recursive_addition.class
	@mv recursive_addition.jar recursive_additionManifest.jar
	@rm recursive_addition.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\recursive_addition.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/recursive_addition.jar .
	@rm -rf build .gradle
endif
clean:
	@rm recursive_addition.jar
