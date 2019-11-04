@echo off

rem need to escape (^) spaces to work with mingw32-make
set PATH=C:\TDM-GCC-64\bin
set PATH=C:\Program^ Files\erl9.1\bin;%PATH%
set OS=Windows_NT

mingw32-make Windows_NT

IF "%~1"=="" pause
