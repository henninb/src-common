@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\bubble_sort.ps1"
rem powershell.exe -noprofile bubble_sort.ps1
rem powershell.exe –noexit bubble_sort.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File bubble_sort.ps1

pause
