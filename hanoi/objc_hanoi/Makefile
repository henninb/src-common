ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc hanoi.m -o hanoi.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc hanoi.m -o hanoi.exe
	@gcc hanoi.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o hanoi.exe
	@rm hanoi.d
Windows_NT:
	@gcc hanoi.m -o hanoi.exe -lobjc
clean: