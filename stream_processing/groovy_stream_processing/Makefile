ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc stream_processing.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf stream_processing.jar stream_processing.class
	@move "stream_processing.jar" "stream_processingManifest.jar"
	@del stream_processing.class
else
	@jar cmf manifest.mf stream_processing.jar stream_processing.class
	@mv stream_processing.jar stream_processingManifest.jar
	@rm stream_processing.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\stream_processing.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/stream_processing.jar .
	@rm -rf build .gradle
endif
clean:
	@rm stream_processing.jar
