ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc combinations.m -o combinations.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc combinations.m -o combinations.exe
	@gcc combinations.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o combinations.exe
	@rm combinations.d
Windows_NT:
	@gcc combinations.m -o combinations.exe -lobjc
clean: