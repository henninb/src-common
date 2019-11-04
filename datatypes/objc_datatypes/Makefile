ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc datatypes.m -o datatypes.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc datatypes.m -o datatypes.exe
	@gcc datatypes.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o datatypes.exe
	@rm datatypes.d
Windows_NT:
	@gcc datatypes.m -o datatypes.exe -lobjc
clean: