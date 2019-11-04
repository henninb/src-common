ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc random_number.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf random_number.jar random_number.class
	@move "random_number.jar" "random_numberManifest.jar"
	@del random_number.class
else
	@jar cmf manifest.mf random_number.jar random_number.class
	@mv random_number.jar random_numberManifest.jar
	@rm random_number.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\random_number.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/random_number.jar .
	@rm -rf build .gradle
endif
clean:
	@rm random_number.jar
