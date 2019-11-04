ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc quadratic.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf quadratic.jar quadratic.class
	@move "quadratic.jar" "quadraticManifest.jar"
	@del quadratic.class
else
	@jar cmf manifest.mf quadratic.jar quadratic.class
	@mv quadratic.jar quadraticManifest.jar
	@rm quadratic.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\quadratic.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/quadratic.jar .
	@rm -rf build .gradle
endif
clean:
	@rm quadratic.jar
