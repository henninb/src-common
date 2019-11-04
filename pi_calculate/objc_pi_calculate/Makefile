ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc pi_calculate.m -o pi_calculate.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc pi_calculate.m -o pi_calculate.exe
	@gcc pi_calculate.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o pi_calculate.exe
	@rm pi_calculate.d
Windows_NT:
	@gcc pi_calculate.m -o pi_calculate.exe -lobjc
clean: