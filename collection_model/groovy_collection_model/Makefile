ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc collection_model.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf collection_model.jar collection_model.class
	@move "collection_model.jar" "collection_modelManifest.jar"
	@del collection_model.class
else
	@jar cmf manifest.mf collection_model.jar collection_model.class
	@mv collection_model.jar collection_modelManifest.jar
	@rm collection_model.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\collection_model.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/collection_model.jar .
	@rm -rf build .gradle
endif
clean:
	@rm collection_model.jar
