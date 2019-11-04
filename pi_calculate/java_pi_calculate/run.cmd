@echo off

set PATH=C:\Java\jre\bin
set OS=Windows_NT

call build N
if exist PiCalculate.java (
    java -jar PiCalculate.jar
) else (
    if NOT exist PiCalculate.java (
        echo copy pi_calculate.
        copy "..\..\pi_calculate\java_pi_calculate\PiCalculate.java" "PiCalculate.java"
    )
)

pause
