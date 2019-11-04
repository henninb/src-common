ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
unix:
#	@gcc collection_model.m -o collection_model.exe -lobjc
#	@source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
#	@source /usr/share/GNUstep/Makefiles/GNUstep.sh
#	@gcc `gnustep-config --objc-flags` -lgnustep-base -lobjc collection_model.m -o collection_model.exe
	@gcc collection_model.m `gnustep-config --objc-flags` `gnustep-config --base-libs` -o collection_model.exe
	@rm collection_model.d
Windows_NT:
	@gcc collection_model.m -o collection_model.exe -lobjc
clean: