ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc hostname_info.m -o hostname_info.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc hostname_info.m -o hostname_info.exe
	@gcc hostname_info.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o hostname_info.exe
	@rm hostname_info.d
Windows_NT:
	@gcc hostname_info.m -o hostname_info.exe -lobjc
clean: