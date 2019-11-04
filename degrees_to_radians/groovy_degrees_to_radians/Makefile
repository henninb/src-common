ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc degrees_to_radians.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf degrees_to_radians.jar degrees_to_radians.class
	@move "degrees_to_radians.jar" "degrees_to_radiansManifest.jar"
	@del degrees_to_radians.class
else
	@jar cmf manifest.mf degrees_to_radians.jar degrees_to_radians.class
	@mv degrees_to_radians.jar degrees_to_radiansManifest.jar
	@rm degrees_to_radians.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\degrees_to_radians.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/degrees_to_radians.jar .
	@rm -rf build .gradle
endif
clean:
	@rm degrees_to_radians.jar
