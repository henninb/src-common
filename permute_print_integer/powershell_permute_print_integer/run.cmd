@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\permute_print_integer.ps1"
rem powershell.exe -noprofile permute_print_integer.ps1
rem powershell.exe –noexit permute_print_integer.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File permute_print_integer.ps1

pause
