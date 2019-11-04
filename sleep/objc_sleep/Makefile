ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc sleep.m -o sleep.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc sleep.m -o sleep.exe
	@gcc sleep.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o sleep.exe
	@rm sleep.d
Windows_NT:
	@gcc sleep.m -o sleep.exe -lobjc
clean: