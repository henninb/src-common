ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc nqueens.m -o nqueens.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc nqueens.m -o nqueens.exe
	@gcc nqueens.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o nqueens.exe
	@rm nqueens.d
Windows_NT:
	@gcc nqueens.m -o nqueens.exe -lobjc
clean: