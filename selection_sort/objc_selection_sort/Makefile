ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc selection_sort.m -o selection_sort.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc selection_sort.m -o selection_sort.exe
	@gcc selection_sort.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o selection_sort.exe
	@rm selection_sort.d
Windows_NT:
	@gcc selection_sort.m -o selection_sort.exe -lobjc
clean: