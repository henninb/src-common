ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc date_today.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf date_today.jar date_today.class
	@move "date_today.jar" "date_todayManifest.jar"
	@del date_today.class
else
	@jar cmf manifest.mf date_today.jar date_today.class
	@mv date_today.jar date_todayManifest.jar
	@rm date_today.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\date_today.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/date_today.jar .
	@rm -rf build .gradle
endif
clean:
	@rm date_today.jar
