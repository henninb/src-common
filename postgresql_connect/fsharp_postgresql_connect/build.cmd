@echo off

rem need to escape space to work with mingw32-make
set PATH=C:\Program Files^ (x86)\Microsoft^ SDKs\F#\3.1\Framework\v4.0
set PATH=C:\Program Files^ (x86)\Microsoft^ SDKs\F#\4.1\Framework\v4.0;%PATH%
set PATH=C:\TDM-GCC-64\bin;%PATH%
rem set PATH="C:\Program Files (x86)\FSharp-1.9.4.19\bin";%PATH%

set OS=Windows_NT

mingw32-make Windows_NT

IF "%~1"=="" pause
