ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc env_variable.m -o env_variable.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc env_variable.m -o env_variable.exe
	@gcc env_variable.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o env_variable.exe
	@rm env_variable.d
Windows_NT:
	@gcc env_variable.m -o env_variable.exe -lobjc
clean: