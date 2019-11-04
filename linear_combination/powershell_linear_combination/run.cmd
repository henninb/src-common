@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\linear_combination.ps1"
rem powershell.exe -noprofile linear_combination.ps1
rem powershell.exe –noexit linear_combination.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File linear_combination.ps1

pause
