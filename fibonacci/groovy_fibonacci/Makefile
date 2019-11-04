ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc fibonacci.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf fibonacci.jar fibonacci.class
	@move "fibonacci.jar" "fibonacciManifest.jar"
	@del fibonacci.class
else
	@jar cmf manifest.mf fibonacci.jar fibonacci.class
	@mv fibonacci.jar fibonacciManifest.jar
	@rm fibonacci.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\fibonacci.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/fibonacci.jar .
	@rm -rf build .gradle
endif
clean:
	@rm fibonacci.jar
