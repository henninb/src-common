ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc epoch_conversion.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf epoch_conversion.jar epoch_conversion.class
	@move "epoch_conversion.jar" "epoch_conversionManifest.jar"
	@del epoch_conversion.class
else
	@jar cmf manifest.mf epoch_conversion.jar epoch_conversion.class
	@mv epoch_conversion.jar epoch_conversionManifest.jar
	@rm epoch_conversion.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\epoch_conversion.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/epoch_conversion.jar .
	@rm -rf build .gradle
endif
clean:
	@rm epoch_conversion.jar
