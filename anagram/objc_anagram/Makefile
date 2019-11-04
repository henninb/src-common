ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc anagram.m -o anagram.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc anagram.m -o anagram.exe
	@gcc anagram.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o anagram.exe
	@rm anagram.d
Windows_NT:
	@gcc anagram.m -o anagram.exe -lobjc
clean: