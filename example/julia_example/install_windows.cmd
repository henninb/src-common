@echo off

PATH=%ProgramData%\chocolatey
echo In the choco.exe Properties window -> Compatibility tab checkbox "Run this program as an administrator".

choco install julia -y

pause
