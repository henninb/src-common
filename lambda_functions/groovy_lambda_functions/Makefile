ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc lambda_functions.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf lambda_functions.jar lambda_functions.class
	@move "lambda_functions.jar" "lambda_functionsManifest.jar"
	@del lambda_functions.class
else
	@jar cmf manifest.mf lambda_functions.jar lambda_functions.class
	@mv lambda_functions.jar lambda_functionsManifest.jar
	@rm lambda_functions.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\lambda_functions.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/lambda_functions.jar .
	@rm -rf build .gradle
endif
clean:
	@rm lambda_functions.jar
