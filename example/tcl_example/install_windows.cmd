@echo off

PATH=%ProgramData%\chocolatey
echo In the choco.exe Properties window -> Compatibility tab checkbox "Run this program as an administrator".

echo leverage the R install of tcl
choco install curl -y
curl https://cran.r-project.org/bin/windows/base/old/3.4.2/R-3.4.2-win.exe
choco install activetcl -y

pause
