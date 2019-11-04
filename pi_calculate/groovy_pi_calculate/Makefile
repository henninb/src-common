ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc pi_calculate.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf pi_calculate.jar pi_calculate.class
	@move "pi_calculate.jar" "pi_calculateManifest.jar"
	@del pi_calculate.class
else
	@jar cmf manifest.mf pi_calculate.jar pi_calculate.class
	@mv pi_calculate.jar pi_calculateManifest.jar
	@rm pi_calculate.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\pi_calculate.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/pi_calculate.jar .
	@rm -rf build .gradle
endif
clean:
	@rm pi_calculate.jar
