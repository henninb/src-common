ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc factorial.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf factorial.jar factorial.class
	@move "factorial.jar" "factorialManifest.jar"
	@del factorial.class
else
	@jar cmf manifest.mf factorial.jar factorial.class
	@mv factorial.jar factorialManifest.jar
	@rm factorial.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\factorial.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/factorial.jar .
	@rm -rf build .gradle
endif
clean:
	@rm factorial.jar
