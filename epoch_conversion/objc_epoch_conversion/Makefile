ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc epoch_conversion.m -o epoch_conversion.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc epoch_conversion.m -o epoch_conversion.exe
	@gcc epoch_conversion.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o epoch_conversion.exe
	@rm epoch_conversion.d
Windows_NT:
	@gcc epoch_conversion.m -o epoch_conversion.exe -lobjc
clean: