ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc env_variable.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf env_variable.jar env_variable.class
	@move "env_variable.jar" "env_variableManifest.jar"
	@del env_variable.class
else
	@jar cmf manifest.mf env_variable.jar env_variable.class
	@mv env_variable.jar env_variableManifest.jar
	@rm env_variable.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\env_variable.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/env_variable.jar .
	@rm -rf build .gradle
endif
clean:
	@rm env_variable.jar
