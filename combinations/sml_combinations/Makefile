ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full combinations.sml -o combinations.exe
	@rm combinations.ui
	@rm combinations.uo
Windows_NT:
	@mosmlc -P full combinations.sml -o combinations.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del combinations.ui
	@c:\windows\system32\cmd.exe /c del combinations.uo
mlton:
	@mlton -output combinations.exe combinations.sml
smlnj:
smlsharp:
	@smlsharp -c combinations.sml
clean:
	@rm combinations.exe
