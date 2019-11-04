ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc magic_squares.m -o magic_squares.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc magic_squares.m -o magic_squares.exe
	@gcc magic_squares.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o magic_squares.exe
	@rm magic_squares.d
Windows_NT:
	@gcc magic_squares.m -o magic_squares.exe -lobjc
clean: