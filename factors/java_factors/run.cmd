@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist Factors.java (
    java -jar Factors.jar
) else (
    if NOT exist Factors.java (
        echo copy factors.
        copy "..\..\factors\java_factors\Factors.java" "Factors.java"
    )
)

pause
