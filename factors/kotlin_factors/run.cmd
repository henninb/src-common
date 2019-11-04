@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist Factors.kt (
    java -jar Factors.jar
) else (
    if NOT exist Factors.java (
        echo copy factors.
        copy "..\..\factors\kotlin_factors\Factors.kt" "Factors.kt"
    )
)

pause
