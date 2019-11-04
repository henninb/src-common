@echo off

::set PATH="C:\Program Files\MIT-GNU Scheme\bin";%PATH%
::set PATH="C:\Scheme 48\Scheme 48 1.8";%PATH%
set PATH=C:\ProgramData\chocolatey\bin;%PATH%
set OS=Windows_NT

rem scm sidereal_time.scm
gsi sidereal_time.scm

pause
