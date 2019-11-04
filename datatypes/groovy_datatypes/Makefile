ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc datatypes.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf datatypes.jar datatypes.class
	@move "datatypes.jar" "datatypesManifest.jar"
	@del datatypes.class
else
	@jar cmf manifest.mf datatypes.jar datatypes.class
	@mv datatypes.jar datatypesManifest.jar
	@rm datatypes.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\datatypes.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/datatypes.jar .
	@rm -rf build .gradle
endif
clean:
	@rm datatypes.jar
