ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc magic_squares.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf magic_squares.jar magic_squares.class
	@move "magic_squares.jar" "magic_squaresManifest.jar"
	@del magic_squares.class
else
	@jar cmf manifest.mf magic_squares.jar magic_squares.class
	@mv magic_squares.jar magic_squaresManifest.jar
	@rm magic_squares.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\magic_squares.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/magic_squares.jar .
	@rm -rf build .gradle
endif
clean:
	@rm magic_squares.jar
