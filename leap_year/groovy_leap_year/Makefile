ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc leap_year.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf leap_year.jar leap_year.class
	@move "leap_year.jar" "leap_yearManifest.jar"
	@del leap_year.class
else
	@jar cmf manifest.mf leap_year.jar leap_year.class
	@mv leap_year.jar leap_yearManifest.jar
	@rm leap_year.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\leap_year.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/leap_year.jar .
	@rm -rf build .gradle
endif
clean:
	@rm leap_year.jar
