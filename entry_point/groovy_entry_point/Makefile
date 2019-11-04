ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc entry_point.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf entry_point.jar entry_point.class
	@move "entry_point.jar" "entry_pointManifest.jar"
	@del entry_point.class
else
	@jar cmf manifest.mf entry_point.jar entry_point.class
	@mv entry_point.jar entry_pointManifest.jar
	@rm entry_point.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\entry_point.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/entry_point.jar .
	@rm -rf build .gradle
endif
clean:
	@rm entry_point.jar
