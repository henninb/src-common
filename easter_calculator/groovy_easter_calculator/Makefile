ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc easter_calculator.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf easter_calculator.jar easter_calculator.class
	@move "easter_calculator.jar" "easter_calculatorManifest.jar"
	@del easter_calculator.class
else
	@jar cmf manifest.mf easter_calculator.jar easter_calculator.class
	@mv easter_calculator.jar easter_calculatorManifest.jar
	@rm easter_calculator.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\easter_calculator.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/easter_calculator.jar .
	@rm -rf build .gradle
endif
clean:
	@rm easter_calculator.jar
