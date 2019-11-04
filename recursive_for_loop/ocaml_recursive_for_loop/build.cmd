@echo off

rem need to escape space to work with mingw32-make
set PATH=C:\TDM-GCC-64\bin
set PATH=%appdata%\OCamlPro\OCPWin\4.02.1+ocp1-msvc64-20160113\bin;%PATH%
set PATH=C:\ocaml\bin;%PATH%
set OS=Windows_NT

mingw32-make Windows_NT

IF "%~1"=="" pause
