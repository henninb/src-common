ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full caesar_cipher.sml -o caesar_cipher.exe
	@rm caesar_cipher.ui
	@rm caesar_cipher.uo
Windows_NT:
	@mosmlc -P full caesar_cipher.sml -o caesar_cipher.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del caesar_cipher.ui
	@c:\windows\system32\cmd.exe /c del caesar_cipher.uo
mlton:
	@mlton -output caesar_cipher.exe caesar_cipher.sml
smlnj:
smlsharp:
	@smlsharp -c caesar_cipher.sml
clean:
	@rm caesar_cipher.exe
