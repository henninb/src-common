ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc date_dow.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf date_dow.jar date_dow.class
	@move "date_dow.jar" "date_dowManifest.jar"
	@del date_dow.class
else
	@jar cmf manifest.mf date_dow.jar date_dow.class
	@mv date_dow.jar date_dowManifest.jar
	@rm date_dow.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\date_dow.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/date_dow.jar .
	@rm -rf build .gradle
endif
clean:
	@rm date_dow.jar
