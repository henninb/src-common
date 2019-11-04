ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc sierpinski_triangle.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf sierpinski_triangle.jar sierpinski_triangle.class
	@move "sierpinski_triangle.jar" "sierpinski_triangleManifest.jar"
	@del sierpinski_triangle.class
else
	@jar cmf manifest.mf sierpinski_triangle.jar sierpinski_triangle.class
	@mv sierpinski_triangle.jar sierpinski_triangleManifest.jar
	@rm sierpinski_triangle.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\sierpinski_triangle.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/sierpinski_triangle.jar .
	@rm -rf build .gradle
endif
clean:
	@rm sierpinski_triangle.jar
