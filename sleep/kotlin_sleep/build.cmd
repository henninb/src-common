@echo off

set PATH=C:\ProgramData\chocolatey\bin
set PATH=C:\Java\jdk\bin;%PATH%
set PATH=C:\TDM-GCC-64\bin;%PATH%
set OS=Windows_NT

mingw32-make manifest gradle

IF "%~1"=="" pause
