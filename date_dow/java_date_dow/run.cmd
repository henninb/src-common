@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist DateDow.java (
    java -jar DateDow.jar
) else (
    if NOT exist DateDow.java (
        echo copy date_dow.
        copy "..\..\date_dow\java_date_dow\DateDow.java" "DateDow.java"
    )
)

pause
