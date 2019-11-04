ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc timezone.m -o timezone.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc timezone.m -o timezone.exe
	@gcc timezone.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o timezone.exe
	@rm timezone.d
Windows_NT:
	@gcc timezone.m -o timezone.exe -lobjc
clean: