ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc sleep.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf sleep.jar sleep.class
	@move "sleep.jar" "sleepManifest.jar"
	@del sleep.class
else
	@jar cmf manifest.mf sleep.jar sleep.class
	@mv sleep.jar sleepManifest.jar
	@rm sleep.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\sleep.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/sleep.jar .
	@rm -rf build .gradle
endif
clean:
	@rm sleep.jar
