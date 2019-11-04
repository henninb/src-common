ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc json_write.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf json_write.jar json_write.class
	@move "json_write.jar" "json_writeManifest.jar"
	@del json_write.class
else
	@jar cmf manifest.mf json_write.jar json_write.class
	@mv json_write.jar json_writeManifest.jar
	@rm json_write.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\json_write.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/json_write.jar .
	@rm -rf build .gradle
endif
clean:
	@rm json_write.jar
