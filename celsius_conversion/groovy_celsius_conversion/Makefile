ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc celsius_conversion.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf celsius_conversion.jar celsius_conversion.class
	@move "celsius_conversion.jar" "celsius_conversionManifest.jar"
	@del celsius_conversion.class
else
	@jar cmf manifest.mf celsius_conversion.jar celsius_conversion.class
	@mv celsius_conversion.jar celsius_conversionManifest.jar
	@rm celsius_conversion.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\celsius_conversion.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/celsius_conversion.jar .
	@rm -rf build .gradle
endif
clean:
	@rm celsius_conversion.jar
