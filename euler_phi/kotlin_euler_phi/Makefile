ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc EulerPhi.kt -include-runtime -d EulerPhi.jar
	@rm -rf EulerPhi
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\EulerPhi.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/EulerPhi.jar .
	@rm -rf build .gradle
endif
clean:
	@rm EulerPhi.jar
