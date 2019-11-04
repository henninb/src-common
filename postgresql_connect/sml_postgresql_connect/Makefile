ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full postgresql_connect.sml -o postgresql_connect.exe
	@rm postgresql_connect.ui
	@rm postgresql_connect.uo
Windows_NT:
	@mosmlc -P full postgresql_connect.sml -o postgresql_connect.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del postgresql_connect.ui
	@c:\windows\system32\cmd.exe /c del postgresql_connect.uo
mlton:
	@mlton -output postgresql_connect.exe postgresql_connect.sml
smlnj:
smlsharp:
	@smlsharp -c postgresql_connect.sml
clean:
	@rm postgresql_connect.exe
