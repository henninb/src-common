ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc recursive_for_loop.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf recursive_for_loop.jar recursive_for_loop.class
	@move "recursive_for_loop.jar" "recursive_for_loopManifest.jar"
	@del recursive_for_loop.class
else
	@jar cmf manifest.mf recursive_for_loop.jar recursive_for_loop.class
	@mv recursive_for_loop.jar recursive_for_loopManifest.jar
	@rm recursive_for_loop.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\recursive_for_loop.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/recursive_for_loop.jar .
	@rm -rf build .gradle
endif
clean:
	@rm recursive_for_loop.jar
