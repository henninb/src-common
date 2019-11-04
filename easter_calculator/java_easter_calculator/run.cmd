@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist EasterCalculator.java (
    java -jar EasterCalculator.jar
) else (
    if NOT exist EasterCalculator.java (
        echo copy easter_calculator.
        copy "..\..\easter_calculator\java_easter_calculator\EasterCalculator.java" "EasterCalculator.java"
    )
)

pause
