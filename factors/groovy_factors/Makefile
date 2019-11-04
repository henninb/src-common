ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc factors.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf factors.jar factors.class
	@move "factors.jar" "factorsManifest.jar"
	@del factors.class
else
	@jar cmf manifest.mf factors.jar factors.class
	@mv factors.jar factorsManifest.jar
	@rm factors.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\factors.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/factors.jar .
	@rm -rf build .gradle
endif
clean:
	@rm factors.jar
