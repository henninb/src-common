@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\selection_sort.ps1"
rem powershell.exe -noprofile selection_sort.ps1
rem powershell.exe –noexit selection_sort.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File selection_sort.ps1

pause
