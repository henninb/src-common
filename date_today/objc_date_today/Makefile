ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc date_today.m -o date_today.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc date_today.m -o date_today.exe
	@gcc date_today.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o date_today.exe
	@rm date_today.d
Windows_NT:
	@gcc date_today.m -o date_today.exe -lobjc
clean: