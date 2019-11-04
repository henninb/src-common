@echo off

rem mklink /J <link> <target>
echo create a junction (hard link) run as admin
mkdir C:\Java
mklink /J "C:\Java\jdk" "C:\Program Files\Java\jdk1.8.0_152"
mklink /J "C:\Java\jre" "C:\Program Files\Java\jre1.8.0_152"

if exist "C:\Program Files\Java" (
  echo "java dir"
  mklink /J C:\Java "C:\Program Files\Java"
}


if exist "C:\Java\jdk1.8.0_152" (
  echo making junction
  mklink /J "C:\Java\jdk" "C:\Java\jdk1.8.0_152"
  mklink /J "C:\Java\jre" "C:\Java\jre1.8.0_152"
)

rem mklink /J "C:\Program Files\Java\jdk" "C:\Program Files\Java\jdk1.8.0_51"
rem mklink /J "C:\Program Files\Java\jdk" "C:\Program Files\Java\jdk1.8.0_144"
rem if exist "C:\Program^ Files\Java\jdk1.8.0_152" (
rem  mklink /J "C:\Java\jdk" "C:\Program Files\Java\jdk1.8.0_152"
rem  mklink /J "C:\Java\jre" "C:\Program Files\Java\jre1.8.0_152"
rem )

echo "end of script"
echo end of script
pause
