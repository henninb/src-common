ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc prime.m -o prime.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc prime.m -o prime.exe
	@gcc prime.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o prime.exe
	@rm prime.d
Windows_NT:
	@gcc prime.m -o prime.exe -lobjc
clean: