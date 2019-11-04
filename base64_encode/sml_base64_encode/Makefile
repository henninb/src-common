ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full base64_encode.sml -o base64_encode.exe
	@rm base64_encode.ui
	@rm base64_encode.uo
Windows_NT:
	@mosmlc -P full base64_encode.sml -o base64_encode.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del base64_encode.ui
	@c:\windows\system32\cmd.exe /c del base64_encode.uo
mlton:
	@mlton -output base64_encode.exe base64_encode.sml
smlnj:
smlsharp:
	@smlsharp -c base64_encode.sml
clean:
	@rm base64_encode.exe
