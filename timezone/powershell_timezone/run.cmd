@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\timezone.ps1"
rem powershell.exe -noprofile timezone.ps1
rem powershell.exe –noexit timezone.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File timezone.ps1

pause
