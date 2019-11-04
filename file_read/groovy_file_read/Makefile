ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc file_read.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf file_read.jar file_read.class
	@move "file_read.jar" "file_readManifest.jar"
	@del file_read.class
else
	@jar cmf manifest.mf file_read.jar file_read.class
	@mv file_read.jar file_readManifest.jar
	@rm file_read.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\file_read.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/file_read.jar .
	@rm -rf build .gradle
endif
clean:
	@rm file_read.jar
