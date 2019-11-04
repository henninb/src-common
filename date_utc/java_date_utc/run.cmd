@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist DateUtc.java (
    java -jar DateUtc.jar
) else (
    if NOT exist DateUtc.java (
        echo copy date_utc.
        copy "..\..\date_utc\java_date_utc\DateUtc.java" "DateUtc.java"
    )
)

pause
