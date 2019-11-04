@echo off

rem need to escape space to work with mingw32-make
set PATH=C:\Java\jdk\bin;%PATH%
set PATH=C:\Java\jre\bin;%PATH%
set PATH=%ProgramData%\chocolatey\bin;%PATH%
set PATH=C:\TDM-GCC-64\bin;%PATH%
set PATH=C:\gradle\bin;%PATH%
set OS=Windows_NT

set JAVA_HOME=C:\Java\jdk

mingw32-make manifest gradle

IF "%~1"=="" pause
