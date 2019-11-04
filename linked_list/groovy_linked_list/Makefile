ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc linked_list.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf linked_list.jar linked_list.class
	@move "linked_list.jar" "linked_listManifest.jar"
	@del linked_list.class
else
	@jar cmf manifest.mf linked_list.jar linked_list.class
	@mv linked_list.jar linked_listManifest.jar
	@rm linked_list.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\linked_list.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/linked_list.jar .
	@rm -rf build .gradle
endif
clean:
	@rm linked_list.jar
