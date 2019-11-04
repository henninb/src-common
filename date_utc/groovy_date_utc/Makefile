ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc date_utc.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf date_utc.jar date_utc.class
	@move "date_utc.jar" "date_utcManifest.jar"
	@del date_utc.class
else
	@jar cmf manifest.mf date_utc.jar date_utc.class
	@mv date_utc.jar date_utcManifest.jar
	@rm date_utc.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\date_utc.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/date_utc.jar .
	@rm -rf build .gradle
endif
clean:
	@rm date_utc.jar
