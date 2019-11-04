ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: mosml
mosml:
	@mosmlc -P full stream_processing.sml -o stream_processing.exe
	@rm stream_processing.ui
	@rm stream_processing.uo
Windows_NT:
	@mosmlc -P full stream_processing.sml -o stream_processing.exe
	@c:\windows\system32\cmd.exe /c copy C:\mosml\bin\camlrt.dll .
	@c:\windows\system32\cmd.exe /c del stream_processing.ui
	@c:\windows\system32\cmd.exe /c del stream_processing.uo
mlton:
	@mlton -output stream_processing.exe stream_processing.sml
smlnj:
smlsharp:
	@smlsharp -c stream_processing.sml
clean:
	@rm stream_processing.exe
