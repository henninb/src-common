@echo off

rem need to escape space to work with mingw32-make
set PATH=C:\TDM-GCC-64\bin
set PATH=C:\Program^ Files\Rust^ stable^ GNU^ 1.22\bin;%PATH%
set OS=Windows_NT

mingw32-make Windows_NT

IF "%~1"=="" pause
