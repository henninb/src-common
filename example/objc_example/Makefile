ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc example.m -o example.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc example.m -o example.exe
	@gcc example.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o example.exe
	@rm example.d
Windows_NT:
	@gcc example.m -o example.exe -lobjc
clean: