@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist DateToday.kt (
    java -jar DateToday.jar
) else (
    if NOT exist DateToday.java (
        echo copy date_today.
        copy "..\..\date_today\kotlin_date_today\DateToday.kt" "DateToday.kt"
    )
)

pause
