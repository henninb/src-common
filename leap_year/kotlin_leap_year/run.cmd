@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist LeapYear.kt (
    java -jar LeapYear.jar
) else (
    if NOT exist LeapYear.java (
        echo copy leap_year.
        copy "..\..\leap_year\kotlin_leap_year\LeapYear.kt" "LeapYear.kt"
    )
)

pause
