ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full degrees_to_radians.sml -o degrees_to_radians.exe
	@rm degrees_to_radians.ui
	@rm degrees_to_radians.uo
Windows_NT:
	@mosmlc -P full degrees_to_radians.sml -o degrees_to_radians.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del degrees_to_radians.ui
	@c:\windows\system32\cmd.exe /c del degrees_to_radians.uo
mlton:
	@mlton -output degrees_to_radians.exe degrees_to_radians.sml
smlnj:
smlsharp:
	@smlsharp -c degrees_to_radians.sml
clean:
	@rm degrees_to_radians.exe
