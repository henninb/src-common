@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist JulianDate.kt (
    java -jar JulianDate.jar
) else (
    if NOT exist JulianDate.java (
        echo copy julian_date.
        copy "..\..\julian_date\kotlin_julian_date\JulianDate.kt" "JulianDate.kt"
    )
)

pause
