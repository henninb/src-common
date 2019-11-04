@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\pi_calculate.ps1"
rem powershell.exe -noprofile pi_calculate.ps1
rem powershell.exe –noexit pi_calculate.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File pi_calculate.ps1

pause
