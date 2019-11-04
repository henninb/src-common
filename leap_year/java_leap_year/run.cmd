@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist LeapYear.java (
    java -jar LeapYear.jar
) else (
    if NOT exist LeapYear.java (
        echo copy leap_year.
        copy "..\..\leap_year\java_leap_year\LeapYear.java" "LeapYear.java"
    )
)

pause
