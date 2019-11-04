@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\epoch_conversion.ps1"
rem powershell.exe -noprofile epoch_conversion.ps1
rem powershell.exe –noexit epoch_conversion.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File epoch_conversion.ps1

pause
