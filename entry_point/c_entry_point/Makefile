ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

#CFLAGS += -D UNIT_TEST

all: unix
Windows_NT:
	@gcc entry_point.c -o entry_point.exe -O2 -Wall
unix:
	@gcc -D UNIT_TEST entry_point.c entry_point_test.c -o entry_point_test.exe -O2 -Wall -lm -lcunit
	@gcc entry_point.c -o entry_point.exe -O2 -Wall -lm
mingw64:
	@x86_64-w64-mingw32-gcc entry_point.c -o entry_point.exe -O2 -Wall
vstudio:
	@SET LIB=lib;%LIB%
	@SET INCLUDE=include;%INCLUDE%
	@cl.exe /nologo /Od /D "WIN32" /D "_CONSOLE" /D "_MBCS" /Gm /EHsc /RTC1 /MLd /Fo"entry_point" /Fd"vc70.pdb" /W3 /c /Wp64 /ZI /TC entry_point.c
	@link.exe /nologo /OUT:entry_point.exe /INCREMENTAL /SUBSYSTEM:CONSOLE /MACHINE:X86 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib entry_point.obj
#	@devenv entry_point.2003.sln /build debug
#	@rd /S /Q Debug
	@del *.suo *.ncb *.ilk *.pdb *.obj *.idb 2> nul
clean:
	rm entry_point.exe
