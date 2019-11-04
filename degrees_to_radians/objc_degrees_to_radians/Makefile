ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc degrees_to_radians.m -o degrees_to_radians.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc degrees_to_radians.m -o degrees_to_radians.exe
	@gcc degrees_to_radians.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o degrees_to_radians.exe
	@rm degrees_to_radians.d
Windows_NT:
	@gcc degrees_to_radians.m -o degrees_to_radians.exe -lobjc
clean: