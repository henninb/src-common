ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc selection_sort.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf selection_sort.jar selection_sort.class
	@move "selection_sort.jar" "selection_sortManifest.jar"
	@del selection_sort.class
else
	@jar cmf manifest.mf selection_sort.jar selection_sort.class
	@mv selection_sort.jar selection_sortManifest.jar
	@rm selection_sort.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\selection_sort.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/selection_sort.jar .
	@rm -rf build .gradle
endif
clean:
	@rm selection_sort.jar
