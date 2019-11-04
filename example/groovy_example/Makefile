ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc example.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf example.jar example.class
	@move "example.jar" "exampleManifest.jar"
	@del example.class
else
	@jar cmf manifest.mf example.jar example.class
	@mv example.jar exampleManifest.jar
	@rm example.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\example.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/example.jar .
	@rm -rf build .gradle
endif
clean:
	@rm example.jar
