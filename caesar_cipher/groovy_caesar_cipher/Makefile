ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: manifest gradle
manifest:
	@groovyc caesar_cipher.groovy
ifeq ($(OS),Windows_NT)
	@jar cmf manifest.mf caesar_cipher.jar caesar_cipher.class
	@move "caesar_cipher.jar" "caesar_cipherManifest.jar"
	@del caesar_cipher.class
else
	@jar cmf manifest.mf caesar_cipher.jar caesar_cipher.class
	@mv caesar_cipher.jar caesar_cipherManifest.jar
	@rm caesar_cipher.class
endif
gradle:
#	@gradle -q build
	@gradle -q standalone
ifeq ($(OS),Windows_NT)
	@move "build\libs\caesar_cipher.jar" .
	@rd /s /q build
	@rd /s /q .gradle
else
	@mv build/libs/caesar_cipher.jar .
	@rm -rf build .gradle
endif
clean:
	@rm caesar_cipher.jar
