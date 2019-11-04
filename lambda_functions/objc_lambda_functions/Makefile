ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc lambda_functions.m -o lambda_functions.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc lambda_functions.m -o lambda_functions.exe
	@gcc lambda_functions.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o lambda_functions.exe
	@rm lambda_functions.d
Windows_NT:
	@gcc lambda_functions.m -o lambda_functions.exe -lobjc
clean: