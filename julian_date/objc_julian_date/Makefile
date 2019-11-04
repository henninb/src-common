ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc julian_date.m -o julian_date.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc julian_date.m -o julian_date.exe
	@gcc julian_date.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o julian_date.exe
	@rm julian_date.d
Windows_NT:
	@gcc julian_date.m -o julian_date.exe -lobjc
clean: