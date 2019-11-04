@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\nqueens.ps1"
rem powershell.exe -noprofile nqueens.ps1
rem powershell.exe –noexit nqueens.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File nqueens.ps1

pause
