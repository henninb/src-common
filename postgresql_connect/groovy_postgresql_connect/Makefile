ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc postgresql_connect.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf postgresql_connect.jar postgresql_connect.class
	@move "postgresql_connect.jar" "postgresql_connectManifest.jar"
	@del postgresql_connect.class
else
	@jar cmf manifest.mf postgresql_connect.jar postgresql_connect.class
	@mv postgresql_connect.jar postgresql_connectManifest.jar
	@rm postgresql_connect.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\postgresql_connect.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/postgresql_connect.jar .
	@rm -rf build .gradle
endif
clean:
	@rm postgresql_connect.jar
