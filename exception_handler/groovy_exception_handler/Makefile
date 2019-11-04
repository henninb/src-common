ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc exception_handler.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf exception_handler.jar exception_handler.class
	@move "exception_handler.jar" "exception_handlerManifest.jar"
	@del exception_handler.class
else
	@jar cmf manifest.mf exception_handler.jar exception_handler.class
	@mv exception_handler.jar exception_handlerManifest.jar
	@rm exception_handler.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\exception_handler.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/exception_handler.jar .
	@rm -rf build .gradle
endif
clean:
	@rm exception_handler.jar
