@echo off

PATH=%ProgramData%\chocolatey
PATH=%ProgramData%\chocolatey\bin
echo In the choco.exe Properties window -> Compatibility tab checkbox "Run this program as an administrator".

choco install curl -y
curl https://cran.r-project.org/bin/windows/base/old/3.4.2/R-3.4.2-win.exe

pause
