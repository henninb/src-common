ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc factorial.m -o factorial.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc factorial.m -o factorial.exe
	@gcc factorial.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o factorial.exe
	@rm factorial.d
Windows_NT:
	@gcc factorial.m -o factorial.exe -lobjc
clean: