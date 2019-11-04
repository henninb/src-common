ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc sidereal_time.m -o sidereal_time.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc sidereal_time.m -o sidereal_time.exe
	@gcc sidereal_time.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o sidereal_time.exe
	@rm sidereal_time.d
Windows_NT:
	@gcc sidereal_time.m -o sidereal_time.exe -lobjc
clean: