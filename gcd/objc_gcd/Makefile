ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc gcd.m -o gcd.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc gcd.m -o gcd.exe
	@gcc gcd.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o gcd.exe
	@rm gcd.d
Windows_NT:
	@gcc gcd.m -o gcd.exe -lobjc
clean: