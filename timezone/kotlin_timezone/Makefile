ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest
manifest:
	@kotlinc Timezone.kt -include-runtime -d Timezone.jar
	@rm -rf Timezone
gradle:
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\Timezone.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/Timezone.jar .
	@rm -rf build .gradle
endif
clean:
	@rm Timezone.jar
