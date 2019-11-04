ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc factors.m -o factors.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc factors.m -o factors.exe
	@gcc factors.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o factors.exe
	@rm factors.d
Windows_NT:
	@gcc factors.m -o factors.exe -lobjc
clean: