ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc file_write.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf file_write.jar file_write.class
	@move "file_write.jar" "file_writeManifest.jar"
	@del file_write.class
else
	@jar cmf manifest.mf file_write.jar file_write.class
	@mv file_write.jar file_writeManifest.jar
	@rm file_write.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\file_write.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/file_write.jar .
	@rm -rf build .gradle
endif
clean:
	@rm file_write.jar
