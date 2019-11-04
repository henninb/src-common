ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc hostname_info.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf hostname_info.jar hostname_info.class
	@move "hostname_info.jar" "hostname_infoManifest.jar"
	@del hostname_info.class
else
	@jar cmf manifest.mf hostname_info.jar hostname_info.class
	@mv hostname_info.jar hostname_infoManifest.jar
	@rm hostname_info.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\hostname_info.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/hostname_info.jar .
	@rm -rf build .gradle
endif
clean:
	@rm hostname_info.jar
