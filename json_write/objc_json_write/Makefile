ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc json_write.m -o json_write.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc json_write.m -o json_write.exe
	@gcc json_write.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o json_write.exe
	@rm json_write.d
Windows_NT:
	@gcc json_write.m -o json_write.exe -lobjc
clean: