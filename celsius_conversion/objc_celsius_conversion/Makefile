ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc celsius_conversion.m -o celsius_conversion.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc celsius_conversion.m -o celsius_conversion.exe
	@gcc celsius_conversion.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o celsius_conversion.exe
	@rm celsius_conversion.d
Windows_NT:
	@gcc celsius_conversion.m -o celsius_conversion.exe -lobjc
clean: