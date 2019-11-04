@echo off

::set PATH="C:\Program Files\MIT-GNU Scheme\bin";%PATH%
::set PATH="C:\Scheme 48\Scheme 48 1.8";%PATH%
set PATH=C:\ProgramData\chocolatey\bin;%PATH%
set OS=Windows_NT

rem scm epoch_conversion.scm
gsi epoch_conversion.scm

pause
