ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc random_number.m -o random_number.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc random_number.m -o random_number.exe
	@gcc random_number.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o random_number.exe
	@rm random_number.d
Windows_NT:
	@gcc random_number.m -o random_number.exe -lobjc
clean: