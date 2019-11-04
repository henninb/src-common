ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc permute_print_integer.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf permute_print_integer.jar permute_print_integer.class
	@move "permute_print_integer.jar" "permute_print_integerManifest.jar"
	@del permute_print_integer.class
else
	@jar cmf manifest.mf permute_print_integer.jar permute_print_integer.class
	@mv permute_print_integer.jar permute_print_integerManifest.jar
	@rm permute_print_integer.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\permute_print_integer.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/permute_print_integer.jar .
	@rm -rf build .gradle
endif
clean:
	@rm permute_print_integer.jar
