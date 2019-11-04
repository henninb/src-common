ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc easter_calculator.m -o easter_calculator.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc easter_calculator.m -o easter_calculator.exe
	@gcc easter_calculator.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o easter_calculator.exe
	@rm easter_calculator.d
Windows_NT:
	@gcc easter_calculator.m -o easter_calculator.exe -lobjc
clean: