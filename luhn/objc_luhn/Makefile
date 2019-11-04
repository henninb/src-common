ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc luhn.m -o luhn.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc luhn.m -o luhn.exe
	@gcc luhn.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o luhn.exe
	@rm luhn.d
Windows_NT:
	@gcc luhn.m -o luhn.exe -lobjc
clean: