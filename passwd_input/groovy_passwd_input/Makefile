ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc passwd_input.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf passwd_input.jar passwd_input.class
	@move "passwd_input.jar" "passwd_inputManifest.jar"
	@del passwd_input.class
else
	@jar cmf manifest.mf passwd_input.jar passwd_input.class
	@mv passwd_input.jar passwd_inputManifest.jar
	@rm passwd_input.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\passwd_input.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/passwd_input.jar .
	@rm -rf build .gradle
endif
clean:
	@rm passwd_input.jar
