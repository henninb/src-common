ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc nqueens.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf nqueens.jar nqueens.class
	@move "nqueens.jar" "nqueensManifest.jar"
	@del nqueens.class
else
	@jar cmf manifest.mf nqueens.jar nqueens.class
	@mv nqueens.jar nqueensManifest.jar
	@rm nqueens.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\nqueens.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/nqueens.jar .
	@rm -rf build .gradle
endif
clean:
	@rm nqueens.jar
