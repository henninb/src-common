ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc euler_phi.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf euler_phi.jar euler_phi.class
	@move "euler_phi.jar" "euler_phiManifest.jar"
	@del euler_phi.class
else
	@jar cmf manifest.mf euler_phi.jar euler_phi.class
	@mv euler_phi.jar euler_phiManifest.jar
	@rm euler_phi.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\euler_phi.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/euler_phi.jar .
	@rm -rf build .gradle
endif
clean:
	@rm euler_phi.jar
