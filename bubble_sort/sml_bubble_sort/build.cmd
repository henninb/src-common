@echo off

rem need to escape space to work with mingw32-make
set PATH=C:\mosml\bin
set PATH=C:\TDM-GCC-64\bin;%PATH%
set OS=Windows_NT

mingw32-make Windows_NT

rem IF "%1"=="" pause
IF "%~1"=="" pause
