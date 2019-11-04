ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc base64_encode.m -o base64_encode.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc base64_encode.m -o base64_encode.exe
	@gcc base64_encode.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o base64_encode.exe
	@rm base64_encode.d
Windows_NT:
	@gcc base64_encode.m -o base64_encode.exe -lobjc
clean: