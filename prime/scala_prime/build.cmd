@echo off

set PATH=C:\Program Files^ (x86)\scala\bin;C:\bin\scala-2.11.4\bin
set PATH=C:\TDM-GCC-64\bin;%PATH%
set PATH=C:\Java\jdk\bin;%PATH%

set OS=Windows_NT

mingw32-make Windows_NT

IF "%~1"=="" pause
