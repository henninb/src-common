ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc date_utc.m -o date_utc.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc date_utc.m -o date_utc.exe
	@gcc date_utc.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o date_utc.exe
	@rm date_utc.d
Windows_NT:
	@gcc date_utc.m -o date_utc.exe -lobjc
clean: