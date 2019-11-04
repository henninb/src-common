ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full date_utc.sml -o date_utc.exe
	@rm date_utc.ui
	@rm date_utc.uo
Windows_NT:
	@mosmlc -P full date_utc.sml -o date_utc.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del date_utc.ui
	@c:\windows\system32\cmd.exe /c del date_utc.uo
mlton:
	@mlton -output date_utc.exe date_utc.sml
smlnj:
smlsharp:
	@smlsharp -c date_utc.sml
clean:
	@rm date_utc.exe
