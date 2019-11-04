ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc combinations.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf combinations.jar combinations.class
	@move "combinations.jar" "combinationsManifest.jar"
	@del combinations.class
else
	@jar cmf manifest.mf combinations.jar combinations.class
	@mv combinations.jar combinationsManifest.jar
	@rm combinations.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\combinations.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/combinations.jar .
	@rm -rf build .gradle
endif
clean:
	@rm combinations.jar
