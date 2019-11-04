ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc file_write.m -o file_write.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc file_write.m -o file_write.exe
	@gcc file_write.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o file_write.exe
	@rm file_write.d
Windows_NT:
	@gcc file_write.m -o file_write.exe -lobjc
clean: