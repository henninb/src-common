ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc roman.m -o roman.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc roman.m -o roman.exe
	@gcc roman.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o roman.exe
	@rm roman.d
Windows_NT:
	@gcc roman.m -o roman.exe -lobjc
clean: