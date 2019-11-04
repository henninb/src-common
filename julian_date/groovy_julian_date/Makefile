ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc julian_date.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf julian_date.jar julian_date.class
	@move "julian_date.jar" "julian_dateManifest.jar"
	@del julian_date.class
else
	@jar cmf manifest.mf julian_date.jar julian_date.class
	@mv julian_date.jar julian_dateManifest.jar
	@rm julian_date.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\julian_date.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/julian_date.jar .
	@rm -rf build .gradle
endif
clean:
	@rm julian_date.jar
