ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full json_write.sml -o json_write.exe
	@rm json_write.ui
	@rm json_write.uo
Windows_NT:
	@mosmlc -P full json_write.sml -o json_write.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del json_write.ui
	@c:\windows\system32\cmd.exe /c del json_write.uo
mlton:
	@mlton -output json_write.exe json_write.sml
smlnj:
smlsharp:
	@smlsharp -c json_write.sml
clean:
	@rm json_write.exe
