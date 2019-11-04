ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc bubble_sort.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf bubble_sort.jar bubble_sort.class
	@move "bubble_sort.jar" "bubble_sortManifest.jar"
	@del bubble_sort.class
else
	@jar cmf manifest.mf bubble_sort.jar bubble_sort.class
	@mv bubble_sort.jar bubble_sortManifest.jar
	@rm bubble_sort.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\bubble_sort.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/bubble_sort.jar .
	@rm -rf build .gradle
endif
clean:
	@rm bubble_sort.jar
