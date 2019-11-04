ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc sidereal_time.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf sidereal_time.jar sidereal_time.class
	@move "sidereal_time.jar" "sidereal_timeManifest.jar"
	@del sidereal_time.class
else
	@jar cmf manifest.mf sidereal_time.jar sidereal_time.class
	@mv sidereal_time.jar sidereal_timeManifest.jar
	@rm sidereal_time.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\sidereal_time.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/sidereal_time.jar .
	@rm -rf build .gradle
endif
clean:
	@rm sidereal_time.jar
