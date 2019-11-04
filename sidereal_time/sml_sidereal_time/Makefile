ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full sidereal_time.sml -o sidereal_time.exe
	@rm sidereal_time.ui
	@rm sidereal_time.uo
Windows_NT:
	@mosmlc -P full sidereal_time.sml -o sidereal_time.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del sidereal_time.ui
	@c:\windows\system32\cmd.exe /c del sidereal_time.uo
mlton:
	@mlton -output sidereal_time.exe sidereal_time.sml
smlnj:
smlsharp:
	@smlsharp -c sidereal_time.sml
clean:
	@rm sidereal_time.exe
