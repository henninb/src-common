ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc linear_combination.m -o linear_combination.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc linear_combination.m -o linear_combination.exe
	@gcc linear_combination.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o linear_combination.exe
	@rm linear_combination.d
Windows_NT:
	@gcc linear_combination.m -o linear_combination.exe -lobjc
clean: