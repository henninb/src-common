@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist JulianDate.java (
    java -jar JulianDate.jar
) else (
    if NOT exist JulianDate.java (
        echo copy julian_date.
        copy "..\..\julian_date\java_julian_date\JulianDate.java" "JulianDate.java"
    )
)

pause
