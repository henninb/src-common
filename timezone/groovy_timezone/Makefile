ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc timezone.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf timezone.jar timezone.class
	@move "timezone.jar" "timezoneManifest.jar"
	@del timezone.class
else
	@jar cmf manifest.mf timezone.jar timezone.class
	@mv timezone.jar timezoneManifest.jar
	@rm timezone.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\timezone.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/timezone.jar .
	@rm -rf build .gradle
endif
clean:
	@rm timezone.jar
