ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc passwd_input.m -o passwd_input.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc passwd_input.m -o passwd_input.exe
	@gcc passwd_input.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o passwd_input.exe
	@rm passwd_input.d
Windows_NT:
	@gcc passwd_input.m -o passwd_input.exe -lobjc
clean: