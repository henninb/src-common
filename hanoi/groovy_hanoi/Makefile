ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc hanoi.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf hanoi.jar hanoi.class
	@move "hanoi.jar" "hanoiManifest.jar"
	@del hanoi.class
else
	@jar cmf manifest.mf hanoi.jar hanoi.class
	@mv hanoi.jar hanoiManifest.jar
	@rm hanoi.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\hanoi.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/hanoi.jar .
	@rm -rf build .gradle
endif
clean:
	@rm hanoi.jar
