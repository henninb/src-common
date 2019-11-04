@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist SiderealTime.java (
    java -jar SiderealTime.jar
) else (
    if NOT exist SiderealTime.java (
        echo copy sidereal_time.
        copy "..\..\sidereal_time\java_sidereal_time\SiderealTime.java" "SiderealTime.java"
    )
)

pause
