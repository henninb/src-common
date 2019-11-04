ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc permute_print_integer.m -o permute_print_integer.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc permute_print_integer.m -o permute_print_integer.exe
	@gcc permute_print_integer.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o permute_print_integer.exe
	@rm permute_print_integer.d
Windows_NT:
	@gcc permute_print_integer.m -o permute_print_integer.exe -lobjc
clean: