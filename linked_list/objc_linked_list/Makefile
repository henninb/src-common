ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc linked_list.m -o linked_list.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc linked_list.m -o linked_list.exe
	@gcc linked_list.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o linked_list.exe
	@rm linked_list.d
Windows_NT:
	@gcc linked_list.m -o linked_list.exe -lobjc
clean: