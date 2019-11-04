@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist SiderealTime.kt (
    java -jar SiderealTime.jar
) else (
    if NOT exist SiderealTime.java (
        echo copy sidereal_time.
        copy "..\..\sidereal_time\kotlin_sidereal_time\SiderealTime.kt" "SiderealTime.kt"
    )
)

pause
