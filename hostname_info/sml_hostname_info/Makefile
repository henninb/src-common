ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full hostname_info.sml -o hostname_info.exe
	@rm hostname_info.ui
	@rm hostname_info.uo
Windows_NT:
	@mosmlc -P full hostname_info.sml -o hostname_info.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del hostname_info.ui
	@c:\windows\system32\cmd.exe /c del hostname_info.uo
mlton:
	@mlton -output hostname_info.exe hostname_info.sml
smlnj:
smlsharp:
	@smlsharp -c hostname_info.sml
clean:
	@rm hostname_info.exe
