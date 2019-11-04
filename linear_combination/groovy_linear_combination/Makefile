ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc linear_combination.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf linear_combination.jar linear_combination.class
	@move "linear_combination.jar" "linear_combinationManifest.jar"
	@del linear_combination.class
else
	@jar cmf manifest.mf linear_combination.jar linear_combination.class
	@mv linear_combination.jar linear_combinationManifest.jar
	@rm linear_combination.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\linear_combination.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/linear_combination.jar .
	@rm -rf build .gradle
endif
clean:
	@rm linear_combination.jar
