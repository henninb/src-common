@echo off

::set PATH="C:\Program Files\MIT-GNU Scheme\bin";%PATH%
::set PATH="C:\Scheme 48\Scheme 48 1.8";%PATH%
set PATH=C:\ProgramData\chocolatey\bin;%PATH%
set OS=Windows_NT

rem scm hostname_info.scm
gsi hostname_info.scm

pause
