@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\stream_processing.ps1"
rem powershell.exe -noprofile stream_processing.ps1
rem powershell.exe –noexit stream_processing.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File stream_processing.ps1

pause
