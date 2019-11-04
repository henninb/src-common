ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc caesar_cipher.m -o caesar_cipher.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc caesar_cipher.m -o caesar_cipher.exe
	@gcc caesar_cipher.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o caesar_cipher.exe
	@rm caesar_cipher.d
Windows_NT:
	@gcc caesar_cipher.m -o caesar_cipher.exe -lobjc
clean: