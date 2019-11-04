ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc entry_point.m -o entry_point.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc entry_point.m -o entry_point.exe
	@gcc entry_point.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o entry_point.exe
	@rm entry_point.d
Windows_NT:
	@gcc entry_point.m -o entry_point.exe -lobjc
clean: