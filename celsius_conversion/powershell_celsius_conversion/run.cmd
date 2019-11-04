@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\celsius_conversion.ps1"
rem powershell.exe -noprofile celsius_conversion.ps1
rem powershell.exe –noexit celsius_conversion.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File celsius_conversion.ps1

pause
